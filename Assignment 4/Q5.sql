/*  Write a query that takes into consideration the supply and cost_per_unit columns 
    for determining the total cost and returns the most expensive state with the total cost.
*/

SELECT state, SUM(supply*cost_per_unit) as total_cost
FROM fruit_imports
GROUP BY state
ORDER BY total_cost desc
LIMIT 1