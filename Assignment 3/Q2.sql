/*
    Write a SQL query against the professors table that would return the following result:

    "It is false that professor Chong is highly paid"
    "It is true that professor Brown is highly paid"
    "It is false that professor Jones is highly paid"
    "It is true that professor Wilson is highly paid"
    "It is false that professor Miller is highly paid"
    "It is true that professor Williams is highly paid"

    NOTE: A professor is highly paid if they make greater than 95000.
*/


SELECT 'It is ' ||(salary>95000)|| ' that professor '||last_name||' is highly paid'
FROM professors


