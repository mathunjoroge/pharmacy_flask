from connect import db
from datetime import datetime

class SaleOrder(db.Model):
    __tablename__ = 'sales_order'
    __table_args__ = {'extend_existing': True}
    transaction_id = db.Column(db.Integer, primary_key=True)
    invoice = db.Column(db.String(80), nullable=False)
    product = db.Column(db.Integer, nullable=False)
    qty = db.Column(db.Integer, nullable=False, default=0)
    price = db.Column(db.Float, nullable=False, default=0.0)
    batch = db.Column(db.String(50), nullable=False)
    discount = db.Column(db.Float, default=0.0)
    date = db.Column(db.DateTime, default=datetime.utcnow)
    balance = db.Column(db.Float, default=None)
