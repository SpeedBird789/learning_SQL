/*
    Write a query that returns the most expensive cost_per_unit of every season.
    The query should display 2 columns, the season and the cost_per_unit
*/


SELECT season, MAX(cost_per_unit)
FROM fruit_imports
GROUP BY season


