SELECT department, first_name, salary,
CASE 
	WHEN salary = max_by_department THEN 'HIGHEST SALARY'
	WHEN salary = min_by_department THEN 'LOWEST SALARY'
END
FROM(
SELECT department, first_name, salary,
	(SELECT MAX(salary) FROM employees as e2 WHERE department = e1.department) as max_by_department,
	(SELECT MIN(salary) FROM employees as e2 WHERE department = e1.department) as min_by_department
FROM employees as e1
) a

WHERE salary in (max_by_department, min_by_department)
ORDER BY department