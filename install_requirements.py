# install_requirements.py

import os
import subprocess

# Define the required packages based on your imports
requirements = """
Flask
SQLAlchemy
PyMySQL
"""

# Write the requirements to requirements.txt
with open("requirements.txt", "w") as f:
    f.write(requirements)

# Function to install the packages using pip
def install_requirements():
    try:
        print("Installing required packages...")
        subprocess.check_call([os.sys.executable, "-m", "pip", "install", "-r", "requirements.txt"])
        print("All packages installed successfully.")
    except subprocess.CalledProcessError as e:
        print(f"Error occurred while installing packages: {e}")

if __name__ == "__main__":
    install_requirements()
