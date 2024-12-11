from datetime import datetime
from connect import db  
from sqlalchemy import func
class Purchase(db.Model):
    transaction_id = db.Column(db.Integer, primary_key=True)
    invoice = db.Column(db.Integer, nullable=False)
    product = db.Column(db.Integer, nullable=False)
    exp_date = db.Column(db.Date, nullable=False)
    qty = db.Column(db.Integer, nullable=False)
    price = db.Column(db.Float, nullable=False)
    date = db.Column(db.DateTime, default=datetime.utcnow)
    batch = db.Column(db.String(255), nullable=False)