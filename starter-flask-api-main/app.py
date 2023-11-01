from flask import Flask, render_template
import os

app = Flask(__name__)

@app.route('/')
def hello_world():
    name = "Abhijeet"  # You can replace this with any name you want to display
    return render_template('template.html', name=name)
