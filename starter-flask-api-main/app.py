from flask import Flask, render_template, request, jsonify
import os
import boto3
from botocore.exceptions import NoCredentialsError

# Create a Flask web application
app = Flask(__name__)

'''
SET AWS_REGION=eu-west-2
SET AWS_ACCESS_KEY_ID=ASIA2EX77VVO537OKKDI
SET AWS_SECRET_ACCESS_KEY=BSdH1UkHXyD4Tqj93oLaWCk8HDNO5YWYOE8e3oDB
SET AWS_SESSION_TOKEN=IQoJb3JpZ2luX2VjEOH//////////wEaCmFwLXNvdXRoLTEiRjBEAiANeEPI+LX36DZLGt5zrk5iOo5G29g2PHJDJVJKMhJtSAIgEirm6zWRDuX1XNT2/EkArqHIzcwSr4QhJfuyI4WLQKwqqQIIGhAAGgw2OTczOTUyOTM1MzMiDKnOR8aPySb4VRp1wSqGAnm6n3FgF2WhpZLJG1OiwALzgVZRiEnJsCHnIjJnZozQXg8lSdroVdbI+71UFMeBKamwVinzTV1nuJfJg89XivimrDY1FyAhcPlQYsFtriJ7pk3UjcqKFatJePiAhk9RLysgnvF4q6hIpEfKw9bGfBAEvyDrW6uAbqi9K48/DEchRZL2eKzmWPpp9BTiebXvpa4nhioxkd9aGz3hkgA2ozRwCrSm9/hVdNFx1rFCR71eSiQoFlFKf0ee1i6Jf8OcaroW4CEAplkIwSX2Q0E6XGsE5HGMME1J0J6KAgd/Xu88MbhdUf4GCIb6sPt73+zLRyyjZtCRY60MSzESzCw8gLTdjrwHJ7EwmImKqgY6ngE1ymf7OLbmzxgVnE/Vxv64b7vEMsStUPLj2noik0HV++EeWzvlUqQISS8uunWoRc2lr+Cs6tmom9I/bzEE1GSVBmSJGldvNFTAiE8b+ZQ1hjMstuUxqOeTBMCjE/GHoIU/Z85LsyKtq9RkEydkq7c0+Qug7bVvYhqM6mzqOHS7iGlRIQq6UQeHY1HIvTmVJWsNUuLVBq5CeTcb8t2wAw==

'''
# AWS S3 configuration
S3_BUCKET_NAME = 'cyclic-rich-ox-handbag-eu-west-2'  # Replace with your S3 bucket name
S3_ACCESS_KEY = 'ASIA2EX77VVORU6FZ3PI'  # Replace with your AWS access key
S3_SECRET_KEY = 'BSdH1UkHXyD4Tqj93oLaWCk8HDNO5YWYOE8e3oDB'  # Replace with your AWS secret key

# Initialize an S3 client using the provided credentials
s3 = boto3.client('s3', aws_access_key_id=S3_ACCESS_KEY, aws_secret_access_key=S3_SECRET_KEY)

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

