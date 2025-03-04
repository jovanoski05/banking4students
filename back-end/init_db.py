import sqlite3

DATABASE = "b4s.db"

def init_db():
    with sqlite3.connect(DATABASE) as conn:
        with open("schema.sql") as f:
            conn.executescript(f.read())
        print("Database initialized.")

if __name__ == "__main__":
    init_db()
