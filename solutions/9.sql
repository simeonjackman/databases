SELECT Team.Name AS Teamname, SUM(SpielerIn_Spiel.Spielzeit) AS GesamteSpielzeit
FROM SpielerIn_Spiel
JOIN SpielerIn ON SpielerIn_Spiel.LizenzNr = SpielerIn.LizenzNr
JOIN Team ON SpielerIn.TeamID = Team.ID
WHERE SpielerIn_Spiel.SpielNr = 2 AND Team.Name = 'LC Bruehl Handball'
GROUP BY Team.Name;