-- SQLite
-- Drop the existing table if it exists
DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS fights;

-- Create a new table with a primary key user_id
CREATE TABLE user (
    user_id INTEGER PRIMARY KEY AUTOINCREMENT,
    username TEXT NOT NULL,
    brawlpass_xp INTEGER DEFAULT 0,
    coins INTEGER DEFAULT 0,
    level INTEGER DEFAULT 0
);

CREATE TABLE fights (
    fight_id INTEGER PRIMARY KEY AUTOINCREMENT,
    player1_id INTEGER NOT NULL,
    player2_id INTEGER NOT NULL,
    winner_id INTEGER,
    fight_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    duration INTEGER, -- Duration in seconds
    player1_score INTEGER DEFAULT 0,
    player2_score INTEGER DEFAULT 0,
    FOREIGN KEY (player1_id) REFERENCES user(user_id),
    FOREIGN KEY (player2_id) REFERENCES user(user_id),
    FOREIGN KEY (winner_id) REFERENCES user(user_id)
);

-- Insert new data
INSERT INTO user (username, brawlpass_xp, coins, level) VALUES
('CoolGuy124', 33, 168, 45),
('L0neWolf', 0, 0, 0),
('MightyWitch51', 522, 3101, 99),
('GrayMane', 132, 235, 23),
('Brawler5315', 21, 5, 3);

INSERT INTO fights (player1_id, player2_id, winner_id, duration, player1_score, player2_score) 
VALUES
(1, 2, 1, 300, 20, 15), -- Player 1 won
(2, 3, 3, 400, 18, 25); -- Player 3 won