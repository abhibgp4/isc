from flask import Flask, render_template, request, jsonify
import os

app = Flask(__name)

@app.route('/')
def hello_world():
    return render_template('index.html')

