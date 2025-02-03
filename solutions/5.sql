SELECT Name 
FROM SpielerIn 
WHERE TeamID = (SELECT ID FROM Team WHERE Name = 'Yellow Winterthur')
ORDER BY Jahrgang ASC 
LIMIT 1;