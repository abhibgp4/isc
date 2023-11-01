from flask import Flask, render_template, request, jsonify
import os
import boto3
from botocore.exceptions import NoCredentialsError

app = Flask(__name)

# AWS S3 configuration
S3_BUCKET_NAME = 'cyclic-rich-ox-handbag-eu-west-2'
S3_ACCESS_KEY = 'YOUR_ACCESS_KEY'
S3_SECRET_KEY = 'YOUR_SECRET_KEY'

# Initialize an S3 client
#s3 = boto3.client('s3', aws_access_key_id=S3_ACCESS_KEY, aws_secret_access_key=S3_SECRET_KEY)

@app.route('/')
def index():
    return render_template('index.html')

