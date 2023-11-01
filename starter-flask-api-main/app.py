from flask import Flask, render_template, request, jsonify
import os
import boto3
from botocore.exceptions import NoCredentialsError

app = Flask(__name__)

@app.route('/')
def hello_world():
    return render_template('index.html')
