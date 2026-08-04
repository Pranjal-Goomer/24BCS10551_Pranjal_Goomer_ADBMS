-- Write a query to do the following:

-- FULL OUTER JOIN the 'student' and 'course' tables using 'Course_id' to match the tables. Output the joined table.

select * from student as S1
FULL Outer JOIN course as C1
on S1.Course_id = C1.Course_id


-- Submission id - 1326833588