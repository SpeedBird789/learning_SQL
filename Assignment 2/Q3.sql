/* Write a query to display the name of those students 
that have the letters "ae" or "ph" in their name and are NOT 19 years old. */

SELECT student_name
FROM students
WHERE (student_name like '%ae%' OR student_name like '%ph%')
AND age != 19;





