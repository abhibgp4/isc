from flask import Flask, render_template, request, jsonify
import os
import boto3
from botocore.exceptions import NoCredentialsError

# Create a Flask web application
app = Flask(__name__)

# AWS S3 configuration
S3_BUCKET_NAME = 'cyclic-rich-ox-handbag-eu-west-2'  # Replace with your S3 bucket name
S3_ACCESS_KEY = 'YOUR_ACCESS_KEY'  # Replace with your AWS access key
S3_SECRET_KEY = 'YOUR_SECRET_KEY'  # Replace with your AWS secret key

# Initialize an S3 client using the provided credentials
#s3 = boto3.client('s3', aws_access_key_id=S3_ACCESS_KEY, aws_secret_access_key=S3_SECRET_KEY)

@app.route('/')
def hello_world():
    return render_template('index.html')
