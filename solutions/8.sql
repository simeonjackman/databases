SELECT SUM(Spielzeit) AS GesamteSpielzeit
FROM SpielerIn_Spiel
WHERE SpielNr = 2 AND LizenzNr IN (
    SELECT LizenzNr 
    FROM SpielerIn 
    WHERE TeamID = (SELECT ID FROM Team WHERE Name = 'LC Bruehl Handball')
);