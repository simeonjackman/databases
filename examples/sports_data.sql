-- Vertrag-Daten
INSERT INTO Vertrag (VertragNr, Dauer, Lohn)
VALUES 
(1, 12, 5000),
(2, 24, 7000),
(3, 36, 10000);

-- SpielerIn-Daten
INSERT INTO SpielerIn (LizenzNr, Name, Jahrgang, Groesse, Position, VertragNr, TeamID)
VALUES 
(101, 'Max Mustermann', 1998, 180, 'Stürmer', 1, 1), -- gehört zu Team Blau
(102, 'Lisa Musterfrau', 2001, 170, 'Mittelfeld', 2, 2), -- gehört zu Team Rot
(103, 'John Doe', 1995, 185, 'Verteidiger', 3, 3); -- gehört zu Team Grün

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

-- SpielerIn_Spiel-Daten
INSERT INTO SpielerIn_Spiel (LizenzNr, SpielNr)
VALUES 
(101, 201), -- Max Mustermann spielte in Spiel 201
(102, 203), -- Lisa Musterfrau spielte in Spiel 203
(103, 202); -- John Doe spielte in Spiel 202
