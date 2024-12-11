from connect import db

class PharmacyDetails(db.Model):
    __tablename__ = 'pharmacy_details'
    id = db.Column(db.Integer, primary_key=True)
    pharmacy_name = db.Column(db.String(100), nullable=False)
from sqlalchemy.orm import relationship
#products model
from sqlalchemy.orm import relationship

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
    category_id = db.Column(db.Integer, db.ForeignKey('cat.id'))  # Foreign key to Category table

    # Define a relationship to the Category model
    category = relationship('Category', backref='products') 

class Category(db.Model):
    __tablename__ = 'cat'

    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(255), nullable=False)

    def __repr__(self):
        return f"<Category(id={self.id}, name={self.name})>"

   

