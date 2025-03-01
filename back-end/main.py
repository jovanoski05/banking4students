from flask import Flask, render_template, request, redirect, session, jsonify

app = Flask(__name__)

@app.route('/')
def index():
    return "Banking4Students"

app.run(host="0.0.0.0", port="8000")