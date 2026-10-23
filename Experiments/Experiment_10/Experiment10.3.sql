-- https://www.codechef.com/learn/course/sql-intermediate/SQ00BS04/problems/GSQ74?tab=statement


SELECT f_name, f_cost, f_type
FROM food
WHERE f_id IN (
  SELECT f_id
  FROM ratings
  GROUP BY f_id
  HAVING AVG(f_rating) >= 4
);