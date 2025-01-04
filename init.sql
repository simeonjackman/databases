-- SQLite
-- Drop the existing table if it exists
DROP TABLE IF EXISTS benutzer;

-- Create a new table with the updated structure
CREATE TABLE benutzer (
    username TEXT PRIMARY KEY,
    brawlpass_xp INTEGER,
    coins INTEGER,
    level INTEGER
);

-- Insert new data
INSERT INTO benutzer (username, brawlpass_xp, coins, level) VALUES
('CoolGuy124', 33, 168, 45),
('L0neWolf', 0, 0, 0),
('MightyWitch51', 522, 3101, 99);