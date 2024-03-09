-- selection of the 

SELECT 
    employee_id
FROM
    employees 
MINUS 
SELECT 
    employee_id
FROM
    dependents;