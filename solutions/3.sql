SELECT Dauer, Lohn 
FROM Vertrag 
WHERE VertragNr = (SELECT VertragNr FROM SpielerIn WHERE Name = 'Anna Meier');