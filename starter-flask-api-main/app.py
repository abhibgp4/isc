from flask import Flask, render_template, request, jsonify
from google.oauth2 import service_account
from googleapiclient.discovery import build
import boto3
from botocore.exceptions import NoCredentialsError
import os

# Create a Flask web application
app = Flask(__name__)

'''
SET AWS_REGION=eu-west-2
SET AWS_ACCESS_KEY_ID=ASIA2EX77VVO537OKKDI
'''
# AWS S3 configuration
S3_BUCKET_NAME = 'cyclic-rich-ox-handbag-eu-west-2'  # Replace with your S3 bucket name
S3_ACCESS_KEY = 'ASIA2EX77VVORU6FZ3PI'  # Replace with your AWS access key
S3_SECRET_KEY = 'BSdH1UkHXyD4Tqj93oLaWCk8HDNO5YWYOE8e3oDB'  # Replace with your AWS secret key

# Initialize an S3 client using the provided credentials
s3 = boto3.client('s3', aws_access_key_id=S3_ACCESS_KEY, aws_secret_access_key=S3_SECRET_KEY)

# Google Drive API configuration
SCOPES = ['https://www.googleapis.com/auth/drive.file']
SERVICE_ACCOUNT_FILE = 'cred.json'  # Replace with your JSON service account key file

# Create a Google Drive API service
#credentials = service_account.Credentials.from_service_account_file(SERVICE_ACCOUNT_FILE, scopes=SCOPES)
#drive_service = build('drive', 'v3', credentials=credentials)

@app.route('/')
def hello_world1():
    return render_template('index.html')

# Define a route to handle the image upload
@app.route('/upload', methods=['POST'])
def upload():
    # Check if the 'image' file is included in the POST request
    if 'image' not in request.files:
        return jsonify({'success': False, 'message': 'No file part'})

    image = request.files['image']  # Get the uploaded image

    # Check if the filename is empty (no file selected)
    if image.filename == '':
        return jsonify({'success': False, 'message': 'No selected file'})

    if image:
        try:
            # Generate a unique file name or use the original file name
            filename = 'uploaded_image.jpg'  # You can modify this as needed

            # Upload the image to the S3 bucket
            s3.upload_fileobj(image, S3_BUCKET_NAME, filename)

            return jsonify({'success': True, 'message': 'Image uploaded successfully'})
        except NoCredentialsError:
            return jsonify({'success': False, 'message': 'AWS credentials not available'})

# Start the Flask application only if this script is executed (not imported)
if __name__ == '__main__':
    app.run(debug=True)

