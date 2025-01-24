CREATE DATABASE SportDB;
USE SportDB;

-- Tabelle für Vertrag
CREATE TABLE Vertrag (
    VertragNr INT PRIMARY KEY,
    Dauer INT,
    Lohn INT
);

-- Tabelle für SpielerIn
CREATE TABLE SpielerIn (
    LizenzNr INT PRIMARY KEY,
    Name TEXT,
    Jahrgang INT,
    Groesse INT,
    Position TEXT,
    VertragNr INT,
    TeamID INT, -- Fremdschlüssel für 1-zu-N Beziehung
    FOREIGN KEY (VertragNr) REFERENCES Vertrag(VertragNr),
    FOREIGN KEY (TeamID) REFERENCES Team(ID)
);

-- Tabelle für Team
CREATE TABLE Team (
    ID INT PRIMARY KEY,
    Name TEXT,
    Trikotfarbe TEXT
);

-- Tabelle für Spiel
CREATE TABLE Spiel (
    SpielNr INT PRIMARY KEY,
    Veranstalter TEXT,
    Gewinner TEXT,
    Gegner TEXT,
    Spielzeit TEXT
);

-- Verknüpfung SpielerIn zu Spiel
CREATE TABLE SpielerIn_Spiel (
    LizenzNr INT,
    SpielNr INT,
    PRIMARY KEY (LizenzNr, SpielNr),
    FOREIGN KEY (LizenzNr) REFERENCES SpielerIn(LizenzNr),
    FOREIGN KEY (SpielNr) REFERENCES Spiel(SpielNr)
);
