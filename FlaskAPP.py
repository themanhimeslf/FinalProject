from flask import Flask, render_template, redirect, session, url_for, request
from waitress import serve
from query import get_player_count
from databaseconnection import *
import hashlib
import logging


# Set for up logging
logging.basicConfig(level=logging.INFO)
logging.getLogger('waitress').setLevel(logging.INFO)
logger = logging.getLogger(__name__)

app = Flask(__name__)
app.secret_key = "hemmelig123"

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

@app.route("/adminlogin", methods=["GET", "POST"])
def adminlogin():
    if request.method == "POST":
        admin_id = request.form["AdminID"]
        AdminPS = request.form["AdminPS"]

        # hasher passordet
        hashed_AdminPS = hashlib.sha256(AdminPS.encode()).hexdigest() # bytt fra hex?

        # sjekk db
        conn = connect_to_database()
        cursor = conn.cursor(dictionary=True)
        cursor.execute("SELECT * FROM ADMIN WHERE AdminID = %s AND AdminPS = %s", (admin_id, hashed_AdminPS))
        admin = cursor.fetchone()
        cursor.close()
        conn.close()

        if admin:
            session['admin_logged_in'] = True
            return redirect("/adminpanel")  # adminpge
        else:
            return "Login failed", 401

    return render_template("adminlogin.html")

@app.route("/adminpanel")
def admin_page():
    if not session.get('admin_logged_in'):
        return redirect("/adminlogin")
    return render_template("adminpanel.html", admin_id=session['admin_id'])




if __name__ == '__main__':
    app.run( host='0.0.0.0', port=80)