/* 
    Using subqueries only, write a SQL statement that returns the names of those students 
    that are taking the courses Physics and US History.

    NOTE: Do not jump ahead and use joins. I want you to solve this problem using only 
    what you've learned in this section.
*/


SELECT student_name FROM Students
WHERE student_no IN 
	(SELECT student_no FROM Student_enrollment WHERE course_no = 'CS180' OR course_no = 'CS220')