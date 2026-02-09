-- 1
SELECT Name, Jahrgang, Position 
FROM SpielerIn;
-- 2
SELECT Name 
FROM SpielerIn
WHERE TeamID = (SELECT ID FROM Team WHERE Name = 'LC Bruehl Handball');
-- 3
SELECT Dauer, Lohn 
FROM Vertrag 
WHERE VertragNr = (SELECT VertragNr FROM SpielerIn WHERE Name = 'Anna Meier');
-- 4
SELECT SpielNr, Spielzeit 
FROM Spiel 
WHERE HeimteamID = (SELECT ID FROM Team WHERE Name = 'Yellow Winterthur')
OR
AuswärtsteamID = (SELECT ID FROM Team WHERE Name = 'Yellow Winterthur');
-- 5
SELECT Name 
FROM SpielerIn 
WHERE TeamID = (SELECT ID FROM Team WHERE Name = 'Yellow Winterthur')
ORDER BY Jahrgang ASC 
LIMIT 1;
-- 6
SELECT Name, Spielzeit 
FROM SpielerIn_Spiel
JOIN SpielerIn ON SpielerIn_Spiel.LizenzNr = SpielerIn.LizenzNr
WHERE SpielNr = 1
ORDER BY Spielzeit DESC;
-- 7
SELECT ROUND(AVG(Groesse), 2) AS Durchschnittsgroesse
FROM SpielerIn
WHERE TeamID = (SELECT ID FROM Team WHERE Name = 'Spono Eagles');
-- 8
SELECT SUM(Spielzeit) AS GesamteSpielzeit
FROM SpielerIn_Spiel
WHERE SpielNr = 2 AND LizenzNr IN (
    SELECT LizenzNr 
    FROM SpielerIn 
    WHERE TeamID = (SELECT ID FROM Team WHERE Name = 'LC Bruehl Handball')
);
-- 9
SELECT Team.Name AS Teamname, SUM(SpielerIn_Spiel.Spielzeit) AS GesamteSpielzeit
FROM SpielerIn_Spiel
JOIN SpielerIn ON SpielerIn_Spiel.LizenzNr = SpielerIn.LizenzNr
JOIN Team ON SpielerIn.TeamID = Team.ID
WHERE SpielerIn_Spiel.SpielNr = 2 AND Team.Name = 'LC Bruehl Handball'
GROUP BY Team.Name;
-- 10
SELECT SpielerIn.Name, Team.Name AS Teamname, Vertrag.Dauer, Vertrag.Lohn 
FROM SpielerIn
JOIN Vertrag ON SpielerIn.VertragNr = Vertrag.VertragNr
JOIN Team ON SpielerIn.TeamID = Team.ID;
-- 11
SELECT SpielerIn.Name, Team.Name AS Teamname, SpielerIn_Spiel.Spielzeit 
FROM SpielerIn_Spiel
JOIN SpielerIn ON SpielerIn_Spiel.LizenzNr = SpielerIn.LizenzNr
JOIN Team ON SpielerIn.TeamID = Team.ID
WHERE SpielerIn_Spiel.SpielNr = 3
ORDER BY Team.Name;
-- 12
SELECT Name, SUM(SpielerIn_Spiel.Spielzeit) as Spielzeit_Total, Vertrag.Lohn, Vertrag.Lohn / SUM(SpielerIn_Spiel.Spielzeit) as Lohn_Pro_Spielminute
FROM SpielerIn
JOIN Vertrag ON SpielerIn.VertragNr = Vertrag.VertragNr
JOIN SpielerIn_Spiel ON SpielerIn.LizenzNr = SpielerIn_Spiel.LizenzNr
GROUP BY SpielerIn.Name
ORDER BY Lohn_Pro_Spielminute DESC
LIMIT 1;
-- 13
SELECT SpielerIn.Name, SUM(SpielerIn_Spiel.Tore) from SpielerIn
JOIN SpielerIn_Spiel ON SpielerIn.LizenzNr = SpielerIn_Spiel.LizenzNr
GROUP BY SpielerIn.LizenzNr
ORDER BY SUM(SpielerIn_Spiel.Tore) DESC