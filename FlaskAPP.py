from flask import Flask, render_template, redirect
from waitress import serve


import logging


# Set up logging
logging.basicConfig(level=logging.INFO)
logging.getLogger('waitress').setLevel(logging.INFO)
logger = logging.getLogger(__name__)

app = Flask(__name__)

@app.route("/")
def slash():
    return redirect("/index")

@app.route("/index")
def root():
    return render_template('index.html')

@app.route("/shop")
def Shop():
    return render_template('shop.html')

@app.route('/modissues')
def Mod():
    return render_template("modissues.html")

@app.route("/about")
def About():
    return render_template("about.html")

if __name__ == '__main__':
    serve(app, host='0.0.0.0', port=8080)