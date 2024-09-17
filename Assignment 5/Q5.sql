/*
Write a query to find the student that is the oldest. 
You are not allowed to use LIMIT or the ORDER BY clause to solve this problem.

*/

SELECT * FROM Students
WHERE age = (SELECT MAX(age) FROM Students)