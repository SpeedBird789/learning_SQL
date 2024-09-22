SELECT department, COUNT(*) FROM employees
GROUP BY department
UNION ALL
SELECT 'Total', COUNT(*) FROM employees