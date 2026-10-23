-- Write a sub-query to find 2nd & 3rd highest salary from employee table

SELECT DISTINCT salary
FROM employee e1
WHERE 2 >= (
    SELECT COUNT(DISTINCT salary)
    FROM employee e2
    WHERE e2.salary > e1.salary
)
ORDER BY salary DESC
LIMIT 2 OFFSET 1;