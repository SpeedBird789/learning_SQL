/*
    Write a query that returns the highest and lowest salary from the professors table 
    excluding the professor named 'Wilson'.
*/


SELECT MIN(salary), MAX(salary)
FROM professors
WHERE last_name != 'Wilson'




