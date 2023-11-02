from flask import Flask, render_template, request, jsonify
from google.oauth2 import service_account
from googleapiclient.discovery import build
import os

app = Flask(__name)

# Google Drive API configuration
SCOPES = ['https://www.googleapis.com/auth/drive.file']
SERVICE_ACCOUNT_FILE = 'client_secret_895193216310-hqjljil23spqpt2252vak7biekk0b55m.apps.googleusercontent.com.json'  # Replace with your JSON service account key file

# Create a Google Drive API service
credentials = service_account.Credentials.from_service_account_file(SERVICE_ACCOUNT_FILE, scopes=SCOPES)
drive_service = build('drive', 'v3', credentials=credentials)

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/upload', methods=['POST'])
def upload():
    if 'file' not in request.files:
        return jsonify({'success': False, 'message': 'No file part'})

    file = request.files['file']
    if file.filename == '':
        return jsonify({'success': False, 'message': 'No selected file'})

    try:
        # Upload the file to Google Drive
        media_body = drive_service.files().create(
            media_body=file,
            supportsAllDrives=True
        ).execute()

        return jsonify({'success': True, 'message': 'File uploaded successfully', 'file_id': media_body.get('id')})
    except Exception as e:
        return jsonify({'success': False, 'message': str(e)})

if __name__ == '__main__':
    app.run(debug=True)
