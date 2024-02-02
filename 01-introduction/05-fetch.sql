
-- using the offset and fetch next 
SELECT 
    employee_id, 
    first_name, 
    last_name, 
    salary
FROM employees
ORDER BY salary DESC
FETCH NEXT 5;

-- the above code is not working