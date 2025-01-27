INSERT INTO Vertrag (Dauer, Lohn)
VALUES 
(12, 4000),
(24, 4500),
(36, 5000),
(18, 4200),
(30, 4700),
(48, 5200),
(12, 4100),
(24, 4600),
(36, 5100),
(18, 4300),
(30, 4800),
(48, 5300),
(12, 4000),
(24, 4400),
(36, 4900),
(18, 4500),
(30, 5000),
(48, 5400),
(12, 4100),
(24, 4600),
(36, 5100),
(18, 4300),
(30, 4700),
(48, 5200);

INSERT INTO Team (Name, Trikotfarbe)
VALUES 
('LC Bruehl Handball', 'Gruen'),
('Spono Eagles', 'Weiss'),
('Yellow Winterthur', 'Gelb');

INSERT INTO SpielerIn (Name, Jahrgang, Groesse, Position, VertragNr, TeamID)
VALUES 
-- LC Bruehl Handball
('Anna Meier', 1999, 172, 'Torhueterin', 1, 1),
('Lena Mueller', 2001, 175, 'Rechtsaussen', 2, 1),
('Sophie Steiner', 1998, 178, 'Linksaussen', 3, 1),
('Clara Keller', 1997, 180, 'Rueckraum Mitte', 4, 1),
('Nina Weber', 2000, 165, 'Rueckraum Links', 5, 1),
('Sarah Frei', 1996, 176, 'Rueckraum Rechts', 6, 1),
('Laura Schmid', 2002, 182, 'Kreislaeuferin', 7, 1),
('Julia Vogel', 2003, 168, 'Torhueterin', 8, 1),

-- Spono Eagles
('Lisa Wagner', 2000, 170, 'Torhueterin', 9, 2),
('Mia Hoffmann', 1998, 176, 'Rechtsaussen', 10, 2),
('Lea Fischer', 1999, 180, 'Linksaussen', 11, 2),
('Marie Steiner', 2001, 172, 'Rueckraum Mitte', 12, 2),
('Emily Keller', 1996, 165, 'Rueckraum Links', 13, 2),
('Hannah Frei', 2003, 182, 'Rueckraum Rechts', 14, 2),
('Emma Vogel', 1997, 168, 'Kreislaeuferin', 15, 2),
('Sophia Meier', 2002, 177, 'Torhueterin', 16, 2),

-- Yellow Winterthur
('Clara Mueller', 1999, 175, 'Torhueterin', 17, 3),
('Lina Fischer', 1998, 178, 'Rechtsaussen', 18, 3),
('Laura Steiner', 2000, 180, 'Linksaussen', 19, 3),
('Maya Weber', 1996, 165, 'Rueckraum Mitte', 20, 3),
('Sophia Keller', 2003, 182, 'Rueckraum Links', 21, 3),
('Anna Frei', 1997, 176, 'Rueckraum Rechts', 22, 3),
('Ella Vogel', 2001, 168, 'Kreislaeuferin', 23, 3),
('Nina Wagner', 2002, 170, 'Torhueterin', 24, 3);

INSERT INTO Spiel (Veranstalter, Gewinner, Gegner, Spielzeit)
VALUES 
('Spono Eagles', 'LC Bruehl Handball', 'Yellow Winterthur', '2025-02-01 14:30:00'),
('LC Bruehl Handball', 'Spono Eagles', 'Yellow Winterthur', '2025-02-03 16:00:00'),
('Yellow Winterthur', 'Yellow Winterthur', 'LC Bruehl Handball', '2025-02-07 18:30:00');


-- Spiel 1

INSERT INTO SpielerIn_Spiel (LizenzNr, SpielNr, Spielzeit)
VALUES 
-- Spono Eagles
(9, 1, 60),
(10, 1, 55),
(11, 1, 50),
(12, 1, 45),
(13, 1, 40),
(14, 1, 35),
(15, 1, 30),

-- LC Bruehl Handball
(1, 1, 60),
(2, 1, 55),
(3, 1, 50),
(4, 1, 45),
(5, 1, 40),
(6, 1, 35),
(7, 1, 30);

-- Spiel 2

INSERT INTO SpielerIn_Spiel (LizenzNr, SpielNr, Spielzeit)
VALUES 
-- LC Bruehl Handball
(1, 2, 60),
(2, 2, 55),
(3, 2, 50),
(4, 2, 45),
(5, 2, 40),
(6, 2, 35),
(7, 2, 30),

-- Yellow Winterthur
(17, 2, 60),
(18, 2, 55),
(19, 2, 50),
(20, 2, 45),
(21, 2, 40),
(22, 2, 35),
(23, 2, 30);

-- Spiel 3

INSERT INTO SpielerIn_Spiel (LizenzNr, SpielNr, Spielzeit)
VALUES 
-- Yellow Winterthur
(17, 3, 60),
(18, 3, 55),
(19, 3, 50),
(20, 3, 45),
(21, 3, 40),
(22, 3, 35),
(23, 3, 30),

-- Spono Eagles
(9, 3, 60),
(10, 3, 55),
(11, 3, 50),
(12, 3, 45),
(13, 3, 40),
(14, 3, 35),
(15, 3, 30);
