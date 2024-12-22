# models.py
from connect import db

class Supplier(db.Model):
    __tablename__ = 'suppliers'
    supplier_id = db.Column(db.Integer, primary_key=True)
    supplier_name = db.Column(db.String(255), nullable=False)
    supplier_address = db.Column(db.String(255), nullable=False)
    supplier_contact = db.Column(db.String(255), nullable=False)
    contact_person = db.Column(db.String(255), nullable=False)
    
