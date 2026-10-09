-- 9.1 :Implement a Row-Level BEFORE UPDATE Trigger on the Salary_Hike table that restricts a salary increase to no more than 15% of the :OLD.salary value; if the increase exceeds this limit, the trigger must raise a custom User-Defined Exception 
--  with a specific message


CREATE OR REPLACE TRIGGER trg_salary_hike
BEFORE UPDATE OF salary ON Salary_Hike
FOR EACH ROW
DECLARE
    e_salary_limit EXCEPTION;
BEGIN
    IF :NEW.salary > :OLD.salary * 1.15 THEN
        RAISE e_salary_limit;
    END IF;

EXCEPTION
    WHEN e_salary_limit THEN
        RAISE_APPLICATION_ERROR(
            -20001,
            'Error: Salary increase cannot exceed 15% of the old salary.'
        );
END;
/