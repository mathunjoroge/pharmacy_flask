from datetime import datetime
from connect import db  
from sqlalchemy import func
class Product(db.Model):
    __tablename__ = 'products'
    __table_args__ = {'extend_existing': True} 
    product_id = db.Column(db.Integer, primary_key=True)
    gen_name = db.Column(db.String(255))
    product_code = db.Column(db.String(50))
    product_name = db.Column(db.String(50))
    maxdiscre = db.Column(db.Float)
    maxdiscpr = db.Column(db.Float)
    o_price = db.Column(db.Float)
    markup = db.Column(db.Float)

class Batch(db.Model):
    __tablename__ = 'batch'
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    product_id = db.Column(db.Integer, db.ForeignKey('products.product_id'))
    quantity = db.Column(db.Integer)
    expirydate = db.Column(db.Date)
    batch_no = db.Column(db.String(50))

    def __init__(self, product_id, quantity, expirydate, batch_no):
        self.product_id = product_id
        self.quantity = quantity
        self.expirydate = expirydate
        self.batch_no = batch_no


def get_products_with_quantity():
    query = db.session.query(Product.product_id, Product.gen_name, Product.product_code,
                              Batch.quantity, Product.o_price, Product.markup,
                              Batch.expirydate, Batch.batch_no, Product.maxdiscre, Product.maxdiscpr) \
                      .outerjoin(Batch, Batch.product_id == Product.product_id) \
                      .filter(Batch.quantity >= 1).all()
    return query
# Function to get products for purchase
def get_products_for_purchase():
    query = db.session.query(Product.product_id, Product.gen_name, Product.product_name,Product.qty).all()
    return query

class SaleOrder(db.Model):
    __tablename__ = 'sales_order'
    __table_args__ = {'extend_existing': True} 
    transaction_id = db.Column(db.Integer, primary_key=True)
    invoice = db.Column(db.String(80), nullable=False)
    product = db.Column(db.Integer, nullable=False)
    qty = db.Column(db.Integer, nullable=False, default=0)  # Ensure qty is of type Integer
    price = db.Column(db.Float, nullable=False, default=0.0)
    batch = db.Column(db.String(50), nullable=False)
    discount = db.Column(db.Float, default=0.0)
    date = db.Column(db.DateTime, default=datetime.utcnow)
    balance = db.Column(db.Float, default=None)


def get_sales_order_details(invoice_number):
    # Execute the query using SQLAlchemy ORM
    sales_order_details = db.session.query(Product.gen_name, Product.product_name, Product.product_id, SaleOrder.qty, SaleOrder.transaction_id, SaleOrder.price, SaleOrder.batch, (SaleOrder.qty * SaleOrder.price).label('amount')) \
        .join(SaleOrder, SaleOrder.product == Product.product_id) \
        .filter(SaleOrder.invoice == invoice_number) \
        .all()

    # Return the results with batch_no included
    return [{'gen_name': row[0], 'product_name': row[1], 'product_id': row[2], 'qty': row[3], 'transaction_id': row[4], 'price': row[5], 'batch': row[6], 'amount': row[7]} for row in sales_order_details]
def get_total_amount_by_invoice(invoice_number):
   #get total
    total_amount = db.session.query(func.sum(SaleOrder.qty * SaleOrder.price).label('total_amount')) \
        .filter(SaleOrder.invoice == invoice_number) \
        .scalar()

    # Return the total amount
    return total_amount




