SELECT * FROM students 		        --Has columns: student_no, student_name, age
SELECT * FROM courses		        --Has columns: course_no, course_title, credits
SELECT * FROM student_enrollment	--Has columns: student_no, course_no
SELECT * FROM professors		    --Has columns: last_name, department, salary, hire_date
SELECT * FROM teach                 --Has last_name, course_no

/*
    Write a query that shows the student's name, the courses the student is taking and the professors that teach that course.
*/



SELECT students.student_name, courses.course_title, professors.last_name as professor_name
FROM students JOIN student_enrollment ON students.student_no = student_enrollment.student_no
 JOIN  courses ON student_enrollment.course_no = courses.course_no
  JOIN teach ON courses.course_no = teach.course_no
   JOIN  professors ON teach.last_name = professors.last_name
ORDER BY student_name