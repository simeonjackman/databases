SELECT ROUND(AVG(Groesse), 2) AS Durchschnittsgroesse
FROM SpielerIn
WHERE TeamID = (SELECT ID FROM Team WHERE Name = 'Spono Eagles');