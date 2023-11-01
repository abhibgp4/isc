from flask import Flask
import os

app = Flask(__name__)

@app.route('/')
def hello_world():
    message = 'Abhijeet'
    return render_template('index.html', message=message)
    #return 'Hello, world! from IIIT BHagalpur '


''' 

from flask import Flask, render_template

app = Flask(__name)

@app.route('/')
def greeting():
    name = "Abhijeet"  # You can change this to any name you want to display
    return render_template('greeting.html', name=name)

if __name__ == '__main__':
    app.run()


'''
