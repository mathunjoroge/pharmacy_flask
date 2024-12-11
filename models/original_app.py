from flask import Flask, render_template, request, redirect, url_for, session,flash
from connect import db, SQLALCHEMY_DATABASE_URI
from flask import jsonify
from models.models import PharmacyDetails, User 
from models.sales import Batch
from models.sales import get_products_with_quantity, get_sales_order_details
from models.sales import get_total_amount_by_invoice
from sqlalchemy import func
from datetime import datetime
import random
from functools import wraps
import hashlib 

app = Flask(__name__)

def login_required(f):
    @wraps(f)
    def decorated_function(*args, **kwargs):
        if 'username' not in session or 'level' not in session:
            return redirect(url_for('login'))
        return f(*args, **kwargs)
    return decorated_function

# Set the secret key for the Flask application
app.secret_key = '56346256tytyqrtrerr'

# Configure the Flask app with the database URI
app.config['SQLALCHEMY_DATABASE_URI'] = SQLALCHEMY_DATABASE_URI
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False

# Initialize the database with the Flask app
db.init_app(app)

# Create tables if not exist
with app.app_context():
    db.create_all()

# Function to generate a random 14-digit number
def generate_random_number():
    return random.randint(10**13, (10**14)-1)

@app.route('/logout')
def logout():
    # Clear the session variables related to authentication
    session.pop('username', None)
    session.pop('level', None)
    # Redirect the user to the login page
    return redirect(url_for('login'))

@app.route('/home')
@login_required
def home():
    pharmacy_details = PharmacyDetails.query.first()
    if pharmacy_details:
        pharmacy_name = pharmacy_details.pharmacy_name
    else:
        pharmacy_name = ""
    
    username = session.get('username')
    
    level = session.get('level')
    
    # Generate the random number for the invoice
    invoice_number = generate_random_number()   

    return render_template('home.html', pharmacy_name=pharmacy_name, username=username, level=level, invoice_number=invoice_number)

# Define the md5_hash function
def md5_hash(text):
    # Convert the text to bytes if it's not already in bytes
    if isinstance(text, str):
        text = text.encode('utf-8')
    
    # Calculate the MD5 hash
    md5_hash = hashlib.md5()
    md5_hash.update(text)
    
    # Return the hexadecimal representation of the hash
    return md5_hash.hexdigest()

# Inside your Flask route handler where you handle the login
@app.route('/', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        # Assuming you have a form with username and password fields
        username = request.form['username']
        password = request.form['password']
        
        # Convert the password to double MD5 hash
        double_md5_password = md5_hash(md5_hash(password))
        
        # Check if the username and password are valid
        user = User.query.filter_by(username=username, password=double_md5_password).first()
        if user:
            # Set the session variables upon successful login
            session['username'] = user.username
            session['level'] = user.level  # Assuming the level attribute exists in the User model
            
            # Redirect to the home page
            return redirect(url_for('home'))
        else:
            # If login fails, redirect back to the login page with a message
            return render_template('index.html', message='Invalid username or password')
    else:
        # If it's a GET request, just render the login form
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
    return render_template('sales.html', username=username, level=level, products=products, invoice=invoice_number, sales_order_details=sales_order_details,total_amount=total_amount)

# Define the Product and SaleOrder models
class Product(db.Model):
    __tablename__ = 'products'
    __table_args__ = {'extend_existing': True}  
    product_id = db.Column(db.Integer, primary_key=True)
    gen_name = db.Column(db.String(100))
    product_name = db.Column(db.String(100))
    qty = db.Column(db.Integer)
    o_price = db.Column(db.Float)
    markup = db.Column(db.Integer)
    level = db.Column(db.Integer)

class SaleOrder(db.Model):
    __tablename__ = 'sales_order'
    __table_args__ = {'extend_existing': True} 
    transaction_id = db.Column(db.Integer, primary_key=True)
    invoice = db.Column(db.String(80), nullable=False)
    product = db.Column(db.Integer, nullable=False)
    qty = db.Column(db.Integer, nullable=False, default=0)  # Set default value to 0
    price = db.Column(db.Float, nullable=False, default=0.0)  # Set default value to 0.0
    batch= db.Column(db.String(50), nullable=False)
    discount = db.Column(db.Float, default=0.0)
    date = db.Column(db.DateTime, default=datetime.utcnow)  # Set default value to current date
    balance = db.Column(db.Float, default=None)

# Route to save sales data
@login_required
@app.route('/save_sales', methods=['POST'])
def save_sales():
    username = session.get('username')
    level = session.get('level')

    # Debugging print to check form data
    print(request.form)

    # Check for missing required fields using list comprehension
    required_fields = ['invoice', 'product', 'qty', 'price', 'batch']
    missing_fields = [field for field in required_fields if field not in request.form]
    if missing_fields:
        return f"Missing required fields: {', '.join(missing_fields)}", 400

    try:
        # Extract form data
        invoice = request.form['invoice']
        product = request.form['product']
        qty = request.form['qty']
        price = request.form['price']
        batch = request.form['batch']
        invoice_number = request.form['invoice']

        # Create a new sale order object
        new_sale = SaleOrder(invoice=invoice, product=product, qty=qty, price=price, batch=batch)

        # Add the new sale order object to the database session
        db.session.add(new_sale)

        # Commit the changes to the database
        db.session.commit()

        # Redirect to the /sales endpoint
        return redirect(url_for('sales', invoice=invoice_number))

    except Exception as e:
        # Handle database insertion error
        print(f"Error inserting data: {e}")
        return "Error occurred while saving sales data. Please try again later.", 500
    #save sale to save any changes


@app.route('/save_sale', methods=['POST'])
@login_required
def save_sale():
    username = session.get('username')
    level = session.get('level')
    products = get_products_with_quantity()
    invoice_number = request.args.get('invoice')

    try:
        # Extract data from the form
        transaction_ids = request.form.getlist('transaction_id')
        qtys = request.form.getlist('qty')
        prices = request.form.getlist('price')
        batches = request.form.getlist('batch')

        # Update products table
        for i in range(len(transaction_ids)):
            product_id = request.form.getlist('product_id')[i]
            qty = int(qtys[i])  # Convert qty to an integer
            # Execute SQL query to update products
            product = db.session.query(Product).get(product_id)
            print(f"Before subtraction - Product ID: {product_id}, Quantity Type: {type(product.qty)}, Quantity: {product.qty}, Qty Type: {type(qty)}, Qty to subtract: {qty}")
            product.qty -= qty  # Subtract qty from product.qty
            print(f"After subtraction - Product ID: {product_id}, Quantity: {product.qty}")

        # Update batch table
        for i in range(len(transaction_ids)):
            product_id = request.form.getlist('product_id')[i]
            batch = batches[i]
            qty = int(qtys[i])  # Convert qty to an integer
            # Execute SQL query to update batch
            batch_item = db.session.query(Batch).filter_by(product_id=product_id, batch_no=batch).first()
            print(f"Before subtraction - Product ID: {product_id}, Batch No: {batch}, Quantity: {batch_item.quantity}, Qty to subtract: {qty}")
            batch_item.quantity -= qty  # Subtract qty from batch_item.quantity
            print(f"After subtraction - Product ID: {product_id}, Batch No: {batch}, Quantity: {batch_item.quantity}")

        # Commit changes to the database
        db.session.commit()

        # Redirect to the sales page with a message and a new invoice number
        flash('Sale has been saved successfully!', 'success')
        invoice_number = generate_random_number()  
        return redirect(url_for('sales', invoice=invoice_number)) 
        
    except Exception as e:
        # Print the actual error
        print(f"An error occurred: {e}")
        # Rollback the session if an error occurs
        db.session.rollback()
        # Return the error as JSON response
        return jsonify({'error': str(e)}), 500



    
@app.route('/delete_sale', methods=['GET'])
@login_required
def delete_sale():
    username = session.get('username')
    level = session.get('level')
    # Get the transaction ID and invoice number from the URL parameters
    transaction_id = request.args.get('transaction_id')
    invoice_number = request.args.get('invoice')  # Change 'invoice_number' to 'invoice'
    
    try:
        # Find the sale record with the given transaction ID
        sale_to_delete = SaleOrder.query.get(transaction_id)
        
        if sale_to_delete:
            # Delete the sale record
            db.session.delete(sale_to_delete)
            db.session.commit()
            
            # Redirect back to the sales page with the invoice number
            return redirect(url_for('sales', invoice=invoice_number, username=username, level=level))
        else:
            # If the sale record is not found, return an error message
            return "Sale record not found.", 404
    except Exception as e:
        # Handle any exceptions that may occur during deletion
        print(f"Error deleting sale record: {e}")
        return "An error occurred while deleting the sale record.", 500    

@app.route('/drugs')
@login_required
def drugs():
    username = session.get('username')
    level = session.get('level')
    products = get_products_with_quantity()
    invoice_number = request.args.get('invoice')
    page = request.args.get('page', 1, type=int)
    per_page = 30
    
    # Query for total number of products
    total_products = db.session.query(func.count(Product.product_id)).scalar()
    
    # Paginate the query
    results = Product.query.paginate(page=page, per_page=per_page)
    
    # Ensure that o_price and qty are numerical values
    for result in results.items:
        result.o_price = float(result.o_price)
        result.qty = int(result.qty)
        username = session.get('username')
        level = session.get('level')
    
    return render_template('drugs.html', results=results, total_products=total_products, username=username, level=level)
#customers
@app.route('/customers')
@login_required
def customers():
   
        username = session.get('username')
        level = session.get('level')
    
        return render_template('customers.html')
#suppliers
@app.route('/suppliers')
@login_required
def suppliers():
   
        username = session.get('username')
        level = session.get('level')
    
        return render_template('suppliers.html', username=username, level=level)
#purchases
@app.route('/purchases')
@login_required
def purchases():
   
        username = session.get('username')
        level = session.get('level')
    
        return render_template('purchases.html')
#wholesale
@app.route('/wholesale')
@login_required
def wholesale():
   
        username = session.get('username')
        level = session.get('level')
    
        return render_template('wholesale.html')
#settings
@app.route('/settings')
@login_required
def settings():
   
        username = session.get('username')
        level = session.get('level')
    
        return render_template('settings.html', username=username, level=level)
#admin
@app.route('/admin')
@login_required
def admin():
   
        username = session.get('username')
        level = session.get('level')
    
        return render_template('admin.html', username=username, level=level)
#inventory
@app.route('/inventory')
@login_required
def inventory():
   
        username = session.get('username')
        level = session.get('level')
    
        return render_template('inventory.html', username=username, level=level)



if __name__ == "__main__":
    app.run(debug=True)
