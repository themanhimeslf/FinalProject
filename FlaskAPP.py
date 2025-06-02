from flask import Flask, render_template, redirect, session, url_for, request
from waitress import serve
from query import get_player_count
from db_connect import connect_to_database
import hashlib
import logging


# Set for up logging
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

@app.route("/adminlogin", methods=["GET", "POST"])
def adminlogin():
    if request.method == "POST":
        admin_id = request.form["adminid"]
        password = request.form["password"]

        # hasher passordet
        hashed_password = hashlib.sha256(password.encode()).hexdigest()

        # sjekk db
        conn = connect_to_database()
        cursor = conn.cursor(dictionary=True)
        cursor.execute("SELECT * FROM ADMIN WHERE AdminID = %s AND AdminPS = %s", (admin_id, hashed_password))
        admin = cursor.fetchone()
        cursor.close()
        conn.close()

        if admin:
            # Ssave sesion redirect?
            return redirect("/adminpage")  # adminpge
        else:
            return "Login failed", 401

    return render_template("adminlogin.html")

@app.route("/adminpage")
def admin_page():
    if admin:
        session['admin_logged_in'] = True
        session['admin_id'] = admin['AdminID']
        return redirect("/adminpage")



if __name__ == '__main__':
    app.run( host='0.0.0.0', port=80)