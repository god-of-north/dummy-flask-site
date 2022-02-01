from flask import Flask, request


app = Flask(__name__)


@app.route("/")
def index():
    return 'Hello AWS!!!'

@app.route("/index.html")
def index_html():
    return index()
