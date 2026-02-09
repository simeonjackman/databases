-- Commeted out first two lines, because the database already exists
-- CREATE DATABASE SportDB;
-- USE SportDB;

-- Vorhandene Tabelle löschen, wenn sie existiert
DROP TABLE IF EXISTS SpielerIn;
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

-- Vorhandene Tabelle löschen, wenn sie existiert
DROP TABLE IF EXISTS Vertrag;
-- Tabelle für Vertrag
CREATE TABLE IF NOT EXISTS Vertrag (
    VertragNr INTEGER PRIMARY KEY AUTOINCREMENT,
    Dauer INTEGER,
    Lohn INTEGER
);


-- Vorhandene Tabelle löschen, wenn sie existiert
DROP TABLE IF EXISTS Team;
-- Tabelle für Team
CREATE TABLE IF NOT EXISTS Team (
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    Name TEXT,
    Trikotfarbe TEXT
);

-- Vorhandene Tabelle löschen, wenn sie existiert
DROP TABLE IF EXISTS Spiel;
-- Tabelle für Spiel
CREATE TABLE Spiel (
    SpielNr INTEGER PRIMARY KEY AUTOINCREMENT,
    HeimteamID INTEGER NOT NULL,
    AuswärtsteamID INTEGER NOT NULL,
    Spielzeit DATETIME NOT NULL,
    GewinnerID INTEGER,
    FOREIGN KEY (HeimteamID) REFERENCES Team(ID),
    FOREIGN KEY (AuswärtsteamID) REFERENCES Team(ID),
    FOREIGN KEY (GewinnerID) REFERENCES Team(ID)
);

-- Vorhandene Tabelle löschen, wenn sie existiert
DROP TABLE IF EXISTS SpielerIn_Spiel;
-- Verknüpfung SpielerIn zu Spiel
CREATE TABLE IF NOT EXISTS SpielerIn_Spiel (
    LizenzNr INTEGER,
    SpielNr INTEGER,
    Spielzeit INTEGER, -- Neue Spalte für die Zeit, die eine Spielerin in einem Spiel verbracht hat (in Minuten)
    Tore INTEGER,
    PRIMARY KEY (LizenzNr, SpielNr),
    FOREIGN KEY (LizenzNr) REFERENCES SpielerIn(LizenzNr),
    FOREIGN KEY (SpielNr) REFERENCES Spiel(SpielNr)
);
