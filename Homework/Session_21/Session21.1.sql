SELECT MIN(Start_Date) AS project_start,
       MAX(End_Date)   AS project_end
FROM (
    SELECT Start_Date,
           End_Date,
           SUM(is_new) OVER (ORDER BY Start_Date) AS project_group
    FROM (
        SELECT p.*,
               CASE
                   WHEN Start_Date = LAG(End_Date) OVER (ORDER BY Start_Date) THEN 0
                   ELSE 1
               END AS is_new
        FROM Projects p
    ) x
) y
GROUP BY project_group
ORDER BY DATEDIFF(MAX(End_Date), MIN(Start_Date)) ASC,
         MIN(Start_Date) ASC;
