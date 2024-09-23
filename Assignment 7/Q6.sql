/*
    In the video lectures, we've been discussing the employees table and the departments table. Considering those tables, write a query that returns employees whose salary is above average for their given department.

*/


SELECT first_name FROM employees as outer_emp
WHERE salary > (SELECT AVG(salary) FROM employees WHERE department = outer_emp.department)