from flask import Flask, render_template, redirect
from waitress import serve
from query import get_player_count

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
    players = get_player_count()
    return render_template('index.html', players=players)

@app.route("/shop")
def Shop():
    return render_template('shop.html')

@app.route('/modissues')
def Mod():
    return render_template("ModIssues.html")

@app.route("/about")
def About():
    return render_template("About.html")

@app.route("/adminlogin")
def adminlogin():
    return render_template("adminlogin.html")


if __name__ == '__main__':
    app.run( host='0.0.0.0', port=80)