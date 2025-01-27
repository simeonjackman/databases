-- Commeted out first two lines, because the database already exists
-- CREATE DATABASE SportDB;
-- USE SportDB;

-- Tabelle für SpielerIn
CREATE TABLE IF NOT EXISTS SpielerIn (
    LizenzNr INTEGER PRIMARY KEY AUTOINCREMENT,
    Name TEXT,
    Jahrgang INTEGER,
    Groesse INTEGER,
    Position TEXT,
    VertragNr INTEGER,
    TeamID INTEGER, -- Fremdschlüssel für 1-zu-N Beziehung
    FOREIGN KEY (VertragNr) REFERENCES Vertrag(VertragNr),
    FOREIGN KEY (TeamID) REFERENCES Team(ID)
);

DELETE FROM SpielerIn;

-- Tabelle für Vertrag
CREATE TABLE IF NOT EXISTS Vertrag (
    VertragNr INTEGER PRIMARY KEY AUTOINCREMENT,
    Dauer INTEGER,
    Lohn INTEGER
);

DELETE FROM Vertrag;

-- Tabelle für Team
CREATE TABLE IF NOT EXISTS Team (
    ID INTEGER INTEGER PRIMARY KEY AUTOINCREMENT,
    Name TEXT,
    Trikotfarbe TEXT
);

DELETE FROM Team;

-- Tabelle für Spiel
CREATE TABLE IF NOT EXISTS Spiel (
    SpielNr INTEGER INTEGER PRIMARY KEY AUTOINCREMENT,
    Veranstalter TEXT,
    Gewinner TEXT,
    Gegner TEXT,
    Spielzeit TEXT
);

DELETE FROM Spiel;

-- Verknüpfung SpielerIn zu Spiel
CREATE TABLE IF NOT EXISTS SpielerIn_Spiel (
    LizenzNr INTEGER,
    SpielNr INTEGER,
    Spielzeit INTEGER, -- Neue Spalte für die Zeit, die ein Spieler in einem Spiel verbracht hat (in Minuten)
    PRIMARY KEY (LizenzNr, SpielNr),
    FOREIGN KEY (LizenzNr) REFERENCES SpielerIn(LizenzNr),
    FOREIGN KEY (SpielNr) REFERENCES Spiel(SpielNr)
);

DELETE FROM SpielerIn_Spiel;
