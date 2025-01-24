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
    Alter INT,
    Groesse INT,
    Position TEXT,
    VertragNr INT,
    FOREIGN KEY (VertragNr) REFERENCES Vertrag(VertragNr)
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

-- Verknüpfung SpielerIn zu Team
CREATE TABLE SpielerIn_Team (
    LizenzNr INT,
    TeamID INT,
    PRIMARY KEY (LizenzNr, TeamID),
    FOREIGN KEY (LizenzNr) REFERENCES SpielerIn(LizenzNr),
    FOREIGN KEY (TeamID) REFERENCES Team(ID)
);

-- Verknüpfung SpielerIn zu Spiel
CREATE TABLE SpielerIn_Spiel (
    LizenzNr INT,
    SpielNr INT,
    PRIMARY KEY (LizenzNr, SpielNr),
    FOREIGN KEY (LizenzNr) REFERENCES SpielerIn(LizenzNr),
    FOREIGN KEY (SpielNr) REFERENCES Spiel(SpielNr)
);
