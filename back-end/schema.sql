DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS trackers;
DROP TABLE IF EXISTS cupons;

CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    email TEXT UNIQUE NOT NULL,
    phoneNumber TEXT UNIQUE NOT NULL,
    money INTEGER DEFAULT 20000,
    password TEXT NOT NULL
);

CREATE TABLE trackers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    goal INTEGER NOT NULL,
    saved INTEGER NOT NULL,
    user_id INTEGER NOT NULL,
    FOREIGN KEY(user_id) REFERENCES users(id)
);

CREATE TABLE cupons (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    amount INTEGER NOT NULL,
    user_id INTEGER NOT NULL,
    FOREIGN KEY(user_id) REFERENCES users(id)
);