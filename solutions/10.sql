SELECT SpielerIn.Name, Team.Name AS Teamname, Vertrag.Dauer, Vertrag.Lohn 
FROM SpielerIn
JOIN Vertrag ON SpielerIn.VertragNr = Vertrag.VertragNr
JOIN Team ON SpielerIn.TeamID = Team.ID;