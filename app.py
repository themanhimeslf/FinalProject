from flask import Flask, render_template

app = Flask(__name__)


@app.route("/")
def root():
    return render_template ("index.html")

@app.route("/Shop")
def Shop():
    return render_template ("shop.html")

@app.route("/modissues")
def modissues():
    return render_template ("modissues.html")

@app.route("/about")
def about():
    return render_template ("about.html")


    

if __name__ == '__main__':
    app.run()