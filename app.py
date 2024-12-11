from flask import Flask, render_template, request, redirect, url_for, session, flash, jsonify,g
from sqlalchemy import func
from datetime import datetime, timedelta
from sqlalchemy.exc import IntegrityError
import random
import hashlib
from functools import wraps

from connect import db, SQLALCHEMY_DATABASE_URI
from models.product import Product
from models.supplier import Supplier
from models.customer import Customer
from models.purchase import Purchase
from models.sale_order import SaleOrder
from models.user import  User
from models.models import PharmacyDetails, Category
from models.sales import Batch, get_products_with_quantity, get_sales_order_details, get_total_amount_by_invoice, get_products_for_purchase

# Create Flask app
app = Flask(__name__)

# Configure the Flask app
app.secret_key = '56346256tytyqrtrerr'
app.config['SQLALCHEMY_DATABASE_URI'] = SQLALCHEMY_DATABASE_URI
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False

# Initialize the database
db.init_app(app)

# Create tables if they don't exist
with app.app_context():
    db.create_all()

# Helper functions
def login_required(f):
    @wraps(f)
    def decorated_function(*args, **kwargs):
        if 'username' not in session or 'level' not in session:
            return redirect(url_for('login'))
        return f(*args, **kwargs)
    return decorated_function

def generate_random_number():
    return random.randint(10**13, (10**14)-1)

def md5_hash(text):
    if isinstance(text, str):
        text = text.encode('utf-8')
    md5_hash = hashlib.md5()
    md5_hash.update(text)
    return md5_hash.hexdigest()

# Routes
@app.route('/logout')
def logout():
    session.pop('username', None)
    session.pop('level', None)
    return redirect(url_for('login'))

@app.route('/home')
@login_required
def home():
    pharmacy_details = PharmacyDetails.query.first()
    pharmacy_name = pharmacy_details.pharmacy_name if pharmacy_details else ""
    username = session.get('username')
    level = session.get('level')
    invoice_number = generate_random_number()
    return render_template('home.html', pharmacy_name=pharmacy_name, username=username, level=level, invoice_number=invoice_number)

@app.route('/', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        username = request.form['username']
        password = request.form['password']
        double_md5_password = md5_hash(md5_hash(password))
        user = User.query.filter_by(username=username, password=double_md5_password).first()
        if user:
            session['username'] = user.username
            session['level'] = user.level
            return redirect(url_for('home'))
        else:
            return render_template('index.html', message='Invalid username or password')
    else:
        return render_template('index.html')

@app.route('/sales')
@login_required
def sales():
    username = session.get('username')
    level = session.get('level')
    products = get_products_with_quantity()
    invoice_number = request.args.get('invoice')
    sales_order_details = get_sales_order_details(invoice_number)
    total_amount = get_total_amount_by_invoice(invoice_number)
    return render_template('sales.html', username=username, level=level, products=products, invoice=invoice_number, sales_order_details=sales_order_details, total_amount=total_amount)

@app.route('/save_sales', methods=['POST'])
@login_required
def save_sales():
    try:
        # Extract form data
        invoice = request.form['invoice']
        product = request.form['product']
        qty = request.form['qty']
        price = request.form['price']
        batch = request.form['batch']

        # Create a new sale order object
        new_sale = SaleOrder(invoice=invoice, product=product, qty=qty, price=price, batch=batch)

        # Add the new sale order object to the database session
        db.session.add(new_sale)

        # Commit the changes to the database
        db.session.commit()

        # Redirect to the /sales endpoint
        return redirect(url_for('sales', invoice=invoice))

    except Exception as e:
        # Handle database insertion error
        app.logger.error(f"Error inserting data: {e}")
        return "Error occurred while saving sales data. Please try again later.", 500

@app.route('/save_sale', methods=['POST'])
@login_required
def save_sale():
    try:
        # Extract data from the form
        transaction_ids = request.form.getlist('transaction_id')
        qtys = request.form.getlist('qty')
        prices = request.form.getlist('price')
        batches = request.form.getlist('batch')
        product_ids = request.form.getlist('product_id')

        # Update products and batches
        for i in range(len(transaction_ids)):
            product_id = product_ids[i]
            qty = int(qtys[i])
            batch = batches[i]

            # Update product quantity
            product = Product.query.get(product_id)
            if product:
                product.qty -= qty

            # Update batch quantity
            batch_item = Batch.query.filter_by(product_id=product_id, batch_no=batch).first()
            if batch_item:
                batch_item.quantity -= qty

        # Commit changes to the database
        db.session.commit()

        # Redirect to the sales page with a message and a new invoice number
        flash('Sale has been saved successfully!', 'success')
        new_invoice_number = generate_random_number()
        return redirect(url_for('sales', invoice=new_invoice_number)) 

    except Exception as e:
        # Log the actual error and rollback
        app.logger.error(f"Error saving sale: {e}")
        db.session.rollback()
        return jsonify({'error': str(e)}), 500

@app.route('/delete_sale', methods=['GET'])
@login_required
def delete_sale():
    try:
        # Get the transaction ID and invoice number from the URL parameters
        transaction_id = request.args.get('transaction_id')
        invoice_number = request.args.get('invoice')
        
        # Find the sale record with the given transaction ID
        sale_to_delete = SaleOrder.query.get(transaction_id)
        
        if sale_to_delete:
            # Delete the sale record
            db.session.delete(sale_to_delete)
            db.session.commit()
            # Redirect back to the sales page with the invoice number
            return redirect(url_for('sales', invoice=invoice_number))
        else:
            return "Sale record not found.", 404
    except Exception as e:
        # Handle any exceptions that may occur during deletion
        app.logger.error(f"Error deleting sale record: {e}")
        return "An error occurred while deleting the sale record.", 500

@app.route('/drugs')
@login_required
def drugs():
    username = session.get('username')
    level = session.get('level')
    page = request.args.get('page', 1, type=int)
    per_page = 30
    
    # Query for products with pagination
    results = Product.query.paginate(page=page, per_page=per_page)
    
    # Ensure that o_price and qty are numerical values
    for result in results.items:
        result.o_price = float(result.o_price)
        result.qty = int(result.qty)
    
    # Calculate total value
    total_value = db.session.query(func.sum(Product.o_price * Product.qty).label('total_value')).scalar()
    
    return render_template('drugs.html', results=results, username=username, level=level, total_value=total_value)

@app.route('/add_product')
@login_required
def add_product():
    try:
        categories = Category.query.all()
        return render_template('add_product.html', categories=categories)
    except Exception as e:
        return jsonify({'success': False, 'error': str(e)}), 500

@app.route('/categories')
def get_categories():
    try:
        categories = Category.query.all()
        category_list = [{'id': category.id, 'name': category.name} for category in categories]
        return jsonify({'categories': category_list}), 200
    except Exception as e:
        return jsonify({'error': str(e)}), 500

@app.route('/save_product', methods=['POST'])
def save_product():
    try:
        # Parse and validate form data
        name = request.form.get('brand')
        selling_price = float(request.form['selling_price'])
        buying_price = float(request.form['buying_price'])
        quantity = int(request.form['quantity'])
        gen_name = request.form.get('gen')
        reorder_level = request.form.get('level')
        category_id = int(request.form['category_id'])

        # Validate data types and ranges (optional)
        if selling_price < 0 or buying_price < 0 or quantity < 0:
            raise ValueError("Invalid data: Prices and quantity must be non-negative")

        # Calculate markup
        markup = (selling_price / buying_price)

        # Create product object
        product = Product(product_name=name, qty=quantity, o_price=buying_price,
                          gen_name=gen_name, markup=markup, level=reorder_level, category_id=category_id)

        # Add product to session and commit to generate product_id
        db.session.add(product)
        db.session.commit()

        # Get the last inserted product_id
        last_product_id = product.product_id

        # Create batch object using the last product_id
        expiry_date = datetime.now() + timedelta(days=365 * 2)

       # Format expiry_date to YYYY-mm
        formatted_expiry_date = expiry_date.strftime('%Y-%m')
        
        batch = Batch(product_id=last_product_id, quantity=quantity,
                      expirydate=formatted_expiry_date, batch_no='entry_batch_1')

        # Add batch to session and commit
        db.session.add(batch)
        db.session.commit()

        # Flash success message
        success_message = f"Product '{name}' (ID: {last_product_id}) saved successfully!"
        flash(success_message, 'success')

        return redirect(url_for('drugs'))  # Redirect to drugs page after successful save

    except (ValueError, Exception) as e:
        app.logger.exception(e)  # Log the full exception traceback
        flash(f"Error saving product: {str(e)}", 'danger')  # Flash error message
        return redirect(url_for('drugs'))  # Redirect to drugs page with error message
#update product
@app.route('/update_product', methods=['POST'])
def save_changes():
    try:
        # Retrieve the form data
        product_ids = request.form.getlist('product_id[]')
        gen_names = request.form.getlist('gen_name[]')
        product_names = request.form.getlist('product_name[]')
        qtys = request.form.getlist('qty[]')
        o_prices = request.form.getlist('o_price[]')
        prices = request.form.getlist('price[]')
        levels = request.form.getlist('level[]')

        # Update the products in the database
        for product_id, gen_name, product_name, qty, o_price, price, level in zip(product_ids, gen_names, product_names, qtys, o_prices, prices, levels):
            # Calculate markup
            markup = (float(price) / float(o_price)) if float(o_price) != 0 else 0

            # Retrieve the product from the database
            product = Product.query.get(product_id)

            # Update the product attributes
            product.gen_name = gen_name
            product.product_name = product_name
            product.qty = qty
            product.o_price = o_price
            product.price = price
            product.markup = markup
            product.level = level

            # Commit the changes to the database
            db.session.commit()

            flash(f'Product with ID {product_id} has been updated.', 'success')

        return redirect(url_for('drugs'))
    except Exception as e:
        app.logger.error(f"Error updating product: {e}")
        return "Error updating product", 500

@app.route('/customers')
@login_required
def customers():
    username = session.get('username')
    level = session.get('level')
    customers = Customer.query.all()
    return render_template('customers.html', username=username, level=level,customers=customers)
#add customer
@app.route('/save_customer', methods=['POST'])
def save_customer():
    customer_name = request.form['customer']
    address = request.form['address']
    contact = request.form['contact']

    # Create a new Customer instance
    new_customer = Customer(customer_name=customer_name, address=address, contact=contact)
    try:
        db.session.add(new_customer)
        db.session.commit()
    except IntegrityError:
        db.session.rollback()
        flash('Customer name or contact already exists. Please use a different name or contact.')
        return redirect(url_for('customers'))

    flash('Customer added successfully!')
    return redirect(url_for('customers'))

@app.route('/suppliers')
@login_required
def suppliers():
    username = session.get('username')
    level = session.get('level')
    
    # Get supplier data
    suppliers = Supplier.query.all()
    
    return render_template('suppliers.html', username=username, level=level, suppliers=suppliers)



@app.route('/save_supplier', methods=['POST'])
def save_supplier():
    # Get data from the form
    supplier_name = request.form['supplier']
    supplier_address = request.form['address']
    supplier_contact = request.form['contact']
    contact_person = request.form['person']

    # Create a new Supplier object
    new_supplier = Supplier(supplier_name=supplier_name,
                            supplier_address=supplier_address,
                            supplier_contact=supplier_contact,
                            contact_person=contact_person)

    try:
        # Add the new supplier to the database
        db.session.add(new_supplier)
        db.session.commit()
        # Flash success message
        flash('Supplier created successfully!', 'success')
    except IntegrityError:
        db.session.rollback()
        # Flash failure message
        flash('Supplier creation failed. Supplier name and contact must be unique.', 'error')
    
    # Redirect back to the suppliers page
    return redirect(url_for('suppliers'))

@app.route('/purchases')
@login_required
def purchases():
    try:
        username = session.get('username')
        level = session.get('level')
        invoice = request.args.get('invoice')

        if not invoice:
            return 'Invoice number is required', 400

        try:
            # Perform the query to get purchase data
            purchase_data = db.session.query(
                Product.gen_name, 
                Product.product_name, 
                Purchase.price, 
                Purchase.qty,
                Purchase.transaction_id, 
                Purchase.batch, 
                Purchase.exp_date
            ).join(
                Purchase, Purchase.product == Product.product_id
            ).filter(
                Purchase.invoice == invoice
            ).all()
            
            # Check if no purchase data is found
            if not purchase_data:
                app.logger.info(f"No purchases found for invoice {invoice}")
            
        except Exception as db_err:
            app.logger.error(f"Database error retrieving purchase data: {db_err}")
            return 'Error retrieving purchase data', 500

        try:
            # Calculate total amount
            total_amount = db.session.query(
                func.sum(Purchase.qty * Purchase.price)
            ).filter(
                Purchase.invoice == invoice
            ).scalar()
            
            # If no purchases, total_amount will be None
            if total_amount is None:
                total_amount = 0
            
        except Exception as db_err:
            app.logger.error(f"Database error calculating total amount: {db_err}")
            return 'Error calculating total amount', 500

        try:
            # Get products for purchase
            products = get_products_for_purchase()
        except Exception as products_err:
            app.logger.error(f"Error retrieving products for purchase: {products_err}")
            return 'Error retrieving products', 500

        # Get current year and month
        current_year = datetime.now().year
        current_month = datetime.now().month

        return render_template(
            'purchases.html', 
            username=username, 
            level=level, 
            products=products, 
            invoice=invoice, 
            purchase_data=purchase_data, 
            total_amount=total_amount, 
            current_year=current_year, 
            current_month=current_month
        )
    
    except Exception as e:
        app.logger.error(f"Unexpected error: {e}")
        return 'Unexpected error', 500



@app.route('/save_purchases', methods=['POST'])
@login_required
def save_purchases():
    try:
        # Extract form data
        invoice = request.form['invoice']
        product_id = request.form['product']
        exp_date=request.form['exp_date']
        qty = request.form['qty']
        batch = request.form['batch_no']
        amount = request.form['amount']

        # Validate form data
        if not all([invoice, product_id, qty, batch, amount,]):
            return "Missing required fields", 400

        # Calculate price per unit
        price = float(amount) / float(qty)

        # Insert into the purchase table
        purchase = Purchase(invoice=invoice, product=product_id, qty=qty, price=price, batch=batch,exp_date=exp_date)
        db.session.add(purchase)
        db.session.commit()

        return redirect(url_for('purchases', invoice=invoice))

    except Exception as e:
        app.logger.error(f"Error saving purchase: {e}")
        return 'Error saving purchase', 500
    #delete purchase item
@app.route('/delete_purchase', methods=['POST'])
@login_required
def delete_purchase():
    try:
        transaction_id = request.form['transaction_id']
        invoice = request.form['invoice']

        # Find the purchase record with the given transaction ID
        purchase_to_delete = Purchase.query.get(transaction_id)
        
        if purchase_to_delete:
            # Delete the purchase record
            db.session.delete(purchase_to_delete)
            db.session.commit()
            flash('Purchase record deleted successfully!', 'success')
        else:
            flash('Purchase record not found.', 'error')
        
        # Redirect back to the purchases page
        return redirect(url_for('purchases', invoice=invoice))
    
    except Exception as e:
        app.logger.error(f"Error deleting purchase record: {e}")
        flash('An error occurred while deleting the purchase record.', 'error')
        return redirect(url_for('purchases', invoice=request.form['invoice']))


@app.route('/wholesale')
@login_required
def wholesale():
    username = session.get('username')
    level = session.get('level')
    return render_template('wholesale.html', username=username, level=level)

@app.route('/settings')
@login_required
def settings():
    username = session.get('username')
    level = session.get('level')
    return render_template('settings.html', username=username, level=level)

@app.route('/admin')
@login_required
def admin():
    username = session.get('username')
    level = session.get('level')
    return render_template('admin.html', username=username, level=level)

@app.route('/inventory')
@login_required
def inventory():
    username = session.get('username')
    level = session.get('level')
    return render_template('inventory.html', username=username, level=level)
#users
@app.route('/users')
@login_required
def users():
    username = session.get('username')
    level = session.get('level')
    users = User.query.all()
    return render_template('users.html', users=users, username=username, level=level)
#register user
@app.route('/register', methods=['GET', 'POST'])
def register():
    if request.method == 'POST':
        username = request.form.get('username')
        password = request.form.get('password')
        name = request.form.get('name')
        level = request.form.get('level')
        position = request.form.get('position', 'Employee')  # Use default value if not provided

        # Error messages dictionary
        errors = {}
        
        # Basic validation
        if not username:
            errors['username'] = 'Username is required.'
        else:
            # Check if username already exists
            existing_user = User.query.filter_by(username=username).first()
            if existing_user:
                errors['username'] = 'Username must be unique.'

        if not password:
            errors['password'] = 'Password is required.'
        if not name:
            errors['name'] = 'Name is required.'
        if not level:
            errors['level'] = 'Level is required.'

        # If there are no errors, proceed to save the user
        if not errors:
            # Double MD5 hash the password
            hashed_password = md5_hash(md5_hash(password))
            new_user = User(username=username, password=hashed_password, name=name, level=level, position=position)
            db.session.add(new_user)
            db.session.commit()
            flash('User registered successfully!', 'success')
            return redirect(url_for('users'))
        else:
            # If there are errors, flash them and render the form again
            for field, error in errors.items():
                flash(f"{field}: {error}", 'danger')

    # If GET request or POST with errors, render the registration form
    return render_template('users.html')

#expenses
@app.route('/expenses')
@login_required
def expenses():
    username = session.get('username')
    level = session.get('level')
    return render_template('expenses.html', username=username, level=level)


# Edit User Route
@app.route('/edit/<int:user_id>', methods=['GET', 'POST'])
def edit_user(user_id):
    user = User.query.get_or_404(user_id)
    if request.method == 'POST':
        user.username = request.form['username']
        user.name = request.form['name']
        user.level = request.form['level']
        try:
            db.session.commit()
            flash('User updated successfully!', 'success')
        except IntegrityError:
            db.session.rollback()
            flash('Error updating user. Please try again.', 'danger')
        return redirect(url_for('users'))
    return render_template('edit_user.html', user=user)

# Delete User Route
@app.route('/delete_user/<int:user_id>', methods=['POST'])
@login_required
def delete_user(user_id):
    user = User.query.get(user_id)
    if not user:
        flash('User not found.', 'danger')
        return redirect(url_for('users'))

    try:
        db.session.delete(user)
        db.session.commit()
        flash('User deleted successfully!', 'success')
    except Exception as e:
        db.session.rollback()
        flash(f'Error deleting user: {str(e)}', 'danger')

    return redirect(url_for('users'))





if __name__ == "__main__":
    app.run(debug=True)
