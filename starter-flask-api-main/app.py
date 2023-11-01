# Import necessary modules and create a Flask web application
from flask import Flask, render_template, request, jsonify
import os

# Create a Flask application
app = Flask(__name)

# Define the directory where uploaded images will be stored
#UPLOAD_FOLDER = 'uploads'
#app.config['UPLOAD_FOLDER'] = UPLOAD_FOLDER


# Define a route for the home page that serves the HTML form
@app.route('/')
def index():
    return render_template('index.html')

'''
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
        # Construct the path where the image will be saved
        filename = os.path.join(app.config['UPLOAD_FOLDER'], 'uploaded_image.jpg')

        # Save the image to the specified path
        image.save(filename)

        return jsonify({'success': True, 'message': 'Image uploaded successfully'})

# Start the Flask application only if this script is executed (not imported)
'''
