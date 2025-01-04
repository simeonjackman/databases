-- SQLite
-- Drop the existing table if it exists
DROP TABLE IF EXISTS user;

-- Create a new table with a primary key user_id
CREATE TABLE user (
    user_id INTEGER PRIMARY KEY AUTOINCREMENT,
    username TEXT NOT NULL,
    brawlpass_xp INTEGER DEFAULT 0,
    coins INTEGER DEFAULT 0,
    level INTEGER DEFAULT 0
);

-- Insert new data
INSERT INTO user (username, brawlpass_xp, coins, level) VALUES
('CoolGuy124', 33, 168, 45),
('L0neWolf', 0, 0, 0),
('MightyWitch51', 522, 3101, 99),
('GrayMane', 132, 235, 23),
('Brawler5315', 21, 5, 3);
