const express = require('express');
const sqlite3 = require('sqlite3').verbose();
const cors = require('cors');

const app = express();
const PORT = 3000;

// Enable CORS to allow requests from the frontend
app.use(cors());

// Connect to SQLite database
const db = new sqlite3.Database('./datenbank.db', (err) => {
    if (err) {
        console.error('Error connecting to SQLite database:', err.message);
    } else {
        console.log('Connected to SQLite database.');
    }
});

// Endpoint to get data
app.get('/api/user', (req, res) => {
    const query = 'SELECT user_id as id, username, brawlpass_xp AS xp, coins, level FROM user';
    db.all(query, [], (err, rows) => {
        if (err) {
            console.error('Error fetching data:', err.message);
            res.status(500).json({ error: 'Failed to retrieve data' });
        } else {
            res.json(rows);
        }
    });
});

// Endpoint to get richest players
app.get('/api/rich', (req, res) => {
    const query = 'SELECT username, coins FROM user';
    db.all(query, [], (err, rows) => {
        if (err) {
            console.error('Error fetching data:', err.message);
            res.status(500).json({ error: 'Failed to retrieve data' });
        } else {
            res.json(rows);
        }
    });
});

// Endpoint to get players with most xp
app.get('/api/xp', (req, res) => {
    const query = 'SELECT username, brawlpass_xp AS xp FROM user';
    db.all(query, [], (err, rows) => {
        if (err) {
            console.error('Error fetching data:', err.message);
            res.status(500).json({ error: 'Failed to retrieve data' });
        } else {
            res.json(rows);
        }
    });
});

// Endpoint to create a new user
app.post('/api/users', express.json(), (req, res) => {
    const { username, brawlpass_xp, coins, level } = req.body;

    if (!username) {
        return res.status(400).json({ error: 'Username is required' });
    }

    const query = `INSERT INTO user (username, brawlpass_xp, coins, level) VALUES (?, ?, ?, ?)`;
    db.run(query, [username, brawlpass_xp || 0, coins || 0, level || 0], function (err) {
        if (err) {
            console.error('Error creating user:', err.message);
            res.status(500).json({ error: 'Failed to create user' });
        } else {
            res.status(201).json({ user_id: this.lastID, message: 'User created successfully' });
        }
    });
});

// Start the server
app.listen(PORT, () => {
    console.log(`Server running on http://localhost:${PORT}`);
});