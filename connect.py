from flask_sqlalchemy import SQLAlchemy

db = SQLAlchemy()

# Database configuration
SQLALCHEMY_DATABASE_URI = 'mysql+pymysql://root:@localhost/pharmacy_db?unix_socket=/opt/lampp/var/mysql/mysql.sock'
SQLALCHEMY_TRACK_MODIFICATIONS = False
