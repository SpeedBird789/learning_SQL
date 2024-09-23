SELECT * FROM students 		        --Has columns: student_no, student_name, age
SELECT * FROM courses		        --Has columns: course_no, course_title, credits
SELECT * FROM student_enrollment	--Has columns: student_no, course_no
SELECT * FROM professors		    --Has columns: last_name, department, salary, hire_date
SELECT * FROM teach                 --Has last_name, course_no

/*
    Write a query that returns ALL of the students as well as any courses they may or may not be taking.
*/

SELECT 
    students.student_name, 
    courses.course_title
FROM 
    students
LEFT JOIN 
    student_enrollment ON students.student_no = student_enrollment.student_no
LEFT JOIN 
    courses ON student_enrollment.course_no = courses.course_no
ORDER BY 
    students.student_name;
