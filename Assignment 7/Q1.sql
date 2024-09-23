SELECT * FROM students 		        --Has columns: student_no, student_name, age
SELECT * FROM courses		        --Has columns: course_no, course_title, credits
SELECT * FROM student_enrollment	--Has columns: student_no, course_no
SELECT * FROM professors		    --Has columns: last_name, department, salary, hire_date
SELECT * FROM teach                 --Has last_name, course_no


/*
    Are the tables student_enrollment and professors directly related to each other? Why or why not?
*/

No.

student_enrollment Table has student_no and course_no columns.
professors Table has last_name, department, salary and hire_date columns.

No common column between the two tables.