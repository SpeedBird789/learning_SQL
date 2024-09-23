SELECT hire_date, salary, 
(SELECT SUM(salary) FROM employees as e2
WHERE e2.hire_date BETWEEN e.hire_date - 90 AND e.hire_date) as spending_pattern
FROM employees as e
ORDER BY hire_date

