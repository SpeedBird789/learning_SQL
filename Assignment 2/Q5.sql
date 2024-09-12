/* Write a query that displays the names and ages of the top 4 oldest students.*/

SELECT student_name, age
FROM students
ORDER BY age DESC
LIMIT 4