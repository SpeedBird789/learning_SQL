/*
    Write a query against the professors table that can output the following in the result: 
    "Chong works in the Science department"
*/

SELECT last_name || ' ' || 'works in the '|| department|| ' department'
FROM professors
LIMIT 1

