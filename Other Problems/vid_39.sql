SELECT country, COUNT(country)
FROM employees e, regions
WHERE e.region_id = regions.region_id
GROUP BY country