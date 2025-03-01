from flask import Flask, render_template, request, redirect, session, jsonify

app = Flask(__name__)

@app.route('/')
def index():
    return "Banking4Students"

@app.route('/register', methods=['POST'])
def register():
    return "User-registration"

@app.route('/login', methods=['POST'])
def login():
    return "User-login"

@app.route('/user-data')
def get_data():
    return "User-banking-data"

app.run(host="0.0.0.0", port="8000")