from flask import Flask, render_template, request, redirect, session, jsonify, g
from flask_bcrypt import Bcrypt
import sqlite3

app = Flask(__name__)

app.secret_key = "dev"

bcrypt=Bcrypt(app)

#Main functionality

def get_db():
    db = getattr(g, '_database', None)
    if db is None:
        db = g._database = sqlite3.connect('b4s.db')
    return db

@app.teardown_appcontext
def close_connection(exception):
    db = getattr(g, '_database', None)
    if db is not None:
        db.close()


def add_user(name, email, phoneNumber, password):

    password = bcrypt.generate_password_hash('password').decode('utf-8')

    conn = get_db()
    conn.execute('INSERT INTO users (name, email, phoneNumber, password) VALUES (?, ?, ?, ?)',
                    [name, email, phoneNumber, password])
    conn.commit()
    conn.close()

    return jsonify({"Code": 1, "Message":"Success"})


def _login(email):
    conn = get_db()
    data = conn.execute('SELECT * FROM users WHERE email = ?', [email]).fetchall()
    conn.commit()
    conn.close()
    return data

#----

@app.route('/')
def index():
    return "Banking4Students"

@app.route('/register', methods=['POST'])
def register():

    if 'user' not in session:
        session['user'] = None

    if session['user']:
        return jsonify({"code":-1, "Message": "User already logged in"})
    
    data = request.get_json()

    if not data['name'] or not data['phoneNumber'] or not data['email'] or not data['password']:
        return jsonify({"Code": -1, "Message": "Not enough information provided"})
    
    add_user(data['name'], data['email'], data['phoneNumber'], data['password'])

    session['user'] = data['email']

    return jsonify({"Code": 1, "User": session['user']})

@app.route('/login', methods=['POST'])
def login():

    if 'user' not in session:
        session['user'] = None

    if session['user']:
        return jsonify({"code":-1, "Message": "User already logged in"})

    req = request.get_json()

    if not req['email'] or not req['password']:
        return jsonify({"Code": -1, "Message": "Not enough information provided"})

    data = _login(req['email'])

    if len(data) == 0:
        return jsonify({"Code": -1, "Message": "Error while trying to login"})
    
    data = data[0]
    
    #Check password
    
    is_valid = bcrypt.check_password_hash(data[4], req['password']) 

    if not is_valid:
        return jsonify({"Code": -1, "Message": "Error while trying to login"})
    
    session['user'] = req['email']

    return jsonify({"Code": 1, "User": session['user']})

@app.route('/logout', methods=['POST'])
def logout():
    if 'user' not in session:
        session['user'] = None
    
    if not session['user']:
        return jsonify({"Code": -1, "Message": "User wasn't logged in"})
    
    session['user'] = None

    return jsonify({"Code": 1, "Message": "User logged out succesfully"})

@app.route('/user-data')
def get_data():
    return "User-banking-data"

app.run(host="0.0.0.0", port="8000")