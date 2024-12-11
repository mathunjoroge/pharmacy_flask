from connect import db
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
    category_id = db.Column(db.Integer)
