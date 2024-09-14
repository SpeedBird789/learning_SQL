/*  Write a query that returns the seasons that produce either 3 fruits or 4 fruits.    */


SELECT season, COUNT(name)
FROM fruit_imports
GROUP BY season
HAVING COUNT(name) = 3 OR COUNT(name) = 4