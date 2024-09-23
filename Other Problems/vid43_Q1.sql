(SELECT first_name, department, hire_date, country
FROM employees INNER JOIN regions
ON employees.region_id = regions.region_id
WHERE hire_date = (SELECT MIN(hire_date) FROM employees)
LIMIT 1)

UNION ALL

SELECT first_name, department, hire_date, country
FROM employees INNER JOIN regions
ON employees.region_id = regions.region_id
WHERE hire_date = (SELECT MAX(hire_date) FROM employees)