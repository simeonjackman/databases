SELECT SpielNr, Spielzeit 
FROM Spiel 
WHERE HeimteamID = (SELECT ID FROM Team WHERE Name = 'Yellow Winterthur')
OR
AuswärtsteamID = (SELECT ID FROM Team WHERE Name = 'Yellow Winterthur');