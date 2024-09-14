/* 
    Execute the below SQL script and answer the question that follows:

    CREATE table fruits (fruit_name varchar(10));
    INSERT INTO fruits VALUES ('Orange');
    INSERT INTO fruits VALUES ('Apple');
    INSERT INTO fruits VALUES (NULL);
    INSERT INTO fruits VALUES (NULL);
*/

SELECT COUNT(COALESCE(fruit_name, 'replacing null')) as fruit_count
FROM fruits;