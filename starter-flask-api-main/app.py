from flask import Flask, render_template

app = Flask(__name)

@app.route('/')
def greeting():
    name = "Abhijeet"  # You can change this to any name you want to display
    return render_template('template.html', name=name)

if __name__ == '__main__':
    app.run()
