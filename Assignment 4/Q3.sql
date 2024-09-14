/*  Write a query that returns the state that has more than 1 import of the same fruit.  */


SELECT state
FROM fruit_imports
GROUP BY state, name
HAVING count(name) > 1