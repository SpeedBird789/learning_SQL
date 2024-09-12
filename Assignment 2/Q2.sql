/* Write a query to display all of those students that contain 
the letters "ch" in their name or their name ends with the letters "nd" */

SELECT *
FROM students
WHERE student_name like '%ch%' OR student_name like '%nd'

