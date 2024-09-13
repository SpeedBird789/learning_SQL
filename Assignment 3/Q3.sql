/*
    Write a query that returns all of the records and columns from the professors table 
    but shortens the department names to only the first three characters in upper case.
*/

SELECT last_name,
SUBSTRING(UPPER(department) FROM 1 FOR 3) as department, 
salary, hire_date
FROM professors




