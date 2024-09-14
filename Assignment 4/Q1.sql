/*  Write a query that displays only the state with the largest amount of fruit supply.  */

SELECT state
FROM fruit_imports
GROUP BY state
ORDER BY SUM(supply) desc
LIMIT 1

