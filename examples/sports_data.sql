-- Vertrag-Daten
INSERT INTO Vertrag (VertragNr, Dauer, Lohn)
VALUES 
(1, 12, 5000),
(2, 24, 7000),
(3, 36, 10000);

-- SpielerIn-Daten
INSERT INTO SpielerIn (LizenzNr, Name, Jahrgang, Groesse, Position, VertragNr)
VALUES 
(101, 'Max Mustermann', 2001, 180, 'Stürmer', 1),
(102, 'Lisa Musterfrau', 1999, 170, 'Mittelfeld', 2),
(103, 'John Doe', 2010, 185, 'Verteidiger', 3);

-- Team-Daten
INSERT INTO Team (ID, Name, Trikotfarbe)
VALUES 
(1, 'Team Blau', 'Blau'),
(2, 'Team Rot', 'Rot'),
(3, 'Team Grün', 'Grün');

-- Spiel-Daten
INSERT INTO Spiel (SpielNr, Veranstalter, Gewinner, Gegner, Spielzeit)
VALUES 
(201, 'Liga A', 'Team Blau', 'Team Rot', '2025-01-01 15:00'),
(202, 'Liga B', 'Team Grün', 'Team Blau', '2025-01-05 18:00'),
(203, 'Liga A', 'Team Rot', 'Team Grün', '2025-01-10 20:00');

-- SpielerIn_Team-Daten
INSERT INTO SpielerIn_Team (LizenzNr, TeamID)
VALUES 
(101, 1), -- Max Mustermann spielt in Team Blau
(102, 2), -- Lisa Musterfrau spielt in Team Rot
(103, 3); -- John Doe spielt in Team Grün

-- SpielerIn_Spiel-Daten
INSERT INTO SpielerIn_Spiel (LizenzNr, SpielNr)
VALUES 
(101, 201), -- Max Mustermann spielte in Spiel 201
(102, 203), -- Lisa Musterfrau spielte in Spiel 203
(103, 202); -- John Doe spielte in Spiel 202
