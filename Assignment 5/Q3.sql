/*
    Using subqueries only, write a query that returns the name of the student
    that is taking the highest number of courses.

    NOTE: Do not jump ahead and use joins. I want you to solve this problem using 
    only what you've learned in this section.
*/


SELECT student_name FROM Students
WHERE student_no IN 
	(SELECT student_no FROM (SELECT student_no, COUNT(course_no) as course_count FROM Student_enrollment        
	GROUP BY student_no         
	ORDER BY course_count desc         
	LIMIT 1) a )