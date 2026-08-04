/* Write a query to do the following:
 - JOIN the tables 'student' and 'course' using 'Course_id' to match both the tables and output the joined table.
 - LEFT JOIN the tables 'student' and 'course' using 'Course_id' to match both the tables and output the joined table. */
 
 
SELECT * 
FROM student AS s1
INNER JOIN course AS c1 
ON s1.Course_id = c1.Course_id;

SELECT * 
FROM student AS s1
LEFT JOIN course AS c1 
ON s1.Course_id = c1.Course_id;

-- Submission id - 1326824419