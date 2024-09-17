/*
    Taking into consideration the supply column and the cost_per_unit column, you should be able to tabulate the total cost to import fruits by each season. The result will look something like this:

    "Winter" "10072.50"
    "Summer" "19623.00"
    "All Year" "22688.00"
    "Spring" "29930.00"
    "Fall" "29035.00"

    Write a query that would transpose this data so that the seasons become columns and the total cost for each season fills the first row?
*/

SELECT 
SUM(CASE WHEN season = 'Winter' THEN total_cost END) as winter_total,
SUM(CASE WHEN season = 'Summer' THEN total_cost END) as summer_total,
SUM(CASE WHEN season = 'All Year' THEN total_cost END) as all_year_total,
SUM(CASE WHEN season = 'Spring' THEN total_cost END) as spring_total,
SUM(CASE WHEN season = 'Fall' THEN total_cost END) as fall_total
FROM(
SELECT season, SUM(supply*cost_per_unit) as total_cost
FROM fruit_imports
GROUP BY season
) a