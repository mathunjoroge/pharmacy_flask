from connect import db

class User(db.Model):
    __tablename__ = 'user'
    id = db.Column(db.Integer, primary_key=True)
    username = db.Column(db.String(50), unique=True, nullable=False)
    password = db.Column(db.String(128), nullable=False)
    name = db.Column(db.String(128), nullable=False)
    level = db.Column(db.Integer, nullable=False)
    position = db.Column(db.String(128), nullable=True, default='Employee')

    def __init__(self, username, password, name, level, position='Employee'):
        self.username = username
        self.password = password
        self.name = name
        self.level = level
        self.position = position