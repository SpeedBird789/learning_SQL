/*
   Write a query that displays 3 columns. 
   The query should display the fruit and it's total supply along with a category of either LOW, ENOUGH or FULL. 
   Low category means that the total supply of the fruit is less than 20,000. 
   The enough category means that the total supply is between 20,000 and 50,000. 
   If the total supply is greater than 50,000 then that fruit falls in the full category.
*/


SELECT name, SUM(supply),
CASE WHEN SUM(supply) < 20000 THEN 'LOW'
 WHEN SUM(supply) > 20000 AND SUM(supply) < 50000 THEN 'ENOUGH'
 WHEN SUM(supply) > 50000 THEN 'FULL'
END as category
FROM fruit_imports
GROUP BY name