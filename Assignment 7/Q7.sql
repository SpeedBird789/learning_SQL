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
