from flask import Flask, render_template, request, jsonify
import os
import boto3
from botocore.exceptions import NoCredentialsError

# Create a Flask web application
app = Flask(__name__)

'''
SET AWS_REGION=eu-west-2
SET AWS_ACCESS_KEY_ID=ASIA2EX77VVORU6FZ3PI
SET AWS_SECRET_ACCESS_KEY=XV+quUJkPh/j3uz0wB5I+ktG03jXnLCw8RD/k30l
SET AWS_SESSION_TOKEN=IQoJb3JpZ2luX2VjEOH//////////wEaCmFwLXNvdXRoLTEiRjBEAiBnrsME4AZBHbr/k/o/KisJybwosSYbyD3/BSFUVJRRDAIgTZKl3GCgtL6UHUmQ3Dbm/NrnXOLjeNdgZgwrdjB2Al0qqQIIGhAAGgw2OTczOTUyOTM1MzMiDEd4gLwuJYuri8a/NyqGAqCw/jWwURKkKt/zXHBjO7oXpWWZYH7Z9YfyGCyT+DcEBgneYbkNXbLC0HaNlQtZBO6vYHuoKzNxtAGVsIOIzdhhJ9RF3wrmz3mncr7/gsinbqF91ymZ/zukkrxuEuBCCewh1WQ8Yiw+pZs2Rey1MJWXYdddVxE7VJQIJxKftGRd4ZtTx9yQJei3Y+p6vCrw6+D3YVaS6QUGFVo/jyhQm/RHUhzBzwMSI6FSe/IvpllslRjES4auxARse6bH1KartF7EdCX5IjM9/2rWMBI5E8fsNEbqyMKTFGAbNX4/CWyzqBhUOP55b1Ny10C3FKFVk9qHP6E0svSB6ymMwc5QyeEg8t96DlkwvIWKqgY6ngHJ2MVFpe6wBMdeE5BczCby2laFIc0YCKCK5nWOFDorCZG/fPAFWrCeg71zwu0fSWCl+GNKwLwdGAxQXmZVU3L2xpZUIpXc9JktckvMOZ1uZwPQHWPGDB0PCXMyi0y3F1xTQN8BGpdRfi7gWVjqfUJIcHj0cgxeGCfzL/JmIsxq9htvpYd8xwZishQSD1zg14D5sg6TuOiITmu6PYHZyA==
'''
# AWS S3 configuration
S3_BUCKET_NAME = 'cyclic-rich-ox-handbag-eu-west-2'  # Replace with your S3 bucket name
S3_ACCESS_KEY = 'ASIA2EX77VVORU6FZ3PI'  # Replace with your AWS access key
S3_SECRET_KEY = 'XV+quUJkPh/j3uz0wB5I+ktG03jXnLCw8RD/k30l'  # Replace with your AWS secret key

# Initialize an S3 client using the provided credentials
s3 = boto3.client('s3', aws_access_key_id=S3_ACCESS_KEY, aws_secret_access_key=S3_SECRET_KEY)

@app.route('/')
def hello_world1():
    return render_template('index.html')
