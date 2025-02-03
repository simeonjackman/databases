SELECT Name 
FROM SpielerIn
WHERE TeamID = (SELECT ID FROM Team WHERE Name = 'LC Bruehl Handball');