from flask import Flask, render_template, request, jsonify
import os

UPLOAD_FOLDER = 'uploads'
app.config['UPLOAD_FOLDER'] = UPLOAD_FOLDER

app = Flask(__name__)

@app.route('/')
def hello_world():
    return render_template('index.html')

