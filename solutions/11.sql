SELECT SpielerIn.Name, Team.Name AS Teamname, SpielerIn_Spiel.Spielzeit 
FROM SpielerIn_Spiel
JOIN SpielerIn ON SpielerIn_Spiel.LizenzNr = SpielerIn.LizenzNr
JOIN Team ON SpielerIn.TeamID = Team.ID
WHERE SpielerIn_Spiel.SpielNr = 3
ORDER BY Team.Name;