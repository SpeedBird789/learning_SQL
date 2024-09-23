SELECT * FROM students 		        --Has columns: student_no, student_name, age
SELECT * FROM courses		        --Has columns: course_no, course_title, credits
SELECT * FROM student_enrollment	--Has columns: student_no, course_no
SELECT * FROM professors		    --Has columns: last_name, department, salary, hire_date
SELECT * FROM teach                 --Has last_name, course_no

/*
    In question 3 you discovered why there is repeating data. How can we eliminate this redundancy? Let's say we only care to see a single professor teaching a course and we don't care for all the other professors that teach the particular course. Write a query that will accomplish this so that every record is distinct.

    HINT: Using the DISTINCT keyword will not help. :-)
*/

SELECT students.student_name, courses.course_title, MIN(professors.last_name) as professor_name
FROM students 
JOIN 
	student_enrollment ON students.student_no = student_enrollment.student_no
JOIN  
	courses ON student_enrollment.course_no = courses.course_no
JOIN 
	teach ON courses.course_no = teach.course_no
JOIN  
	professors ON teach.last_name = professors.last_name
GROUP BY students.student_name, courses.course_title
ORDER BY student_name