SELECT Name, Spielzeit 
FROM SpielerIn_Spiel
JOIN SpielerIn ON SpielerIn_Spiel.LizenzNr = SpielerIn.LizenzNr
WHERE SpielNr = 1
ORDER BY Spielzeit DESC;