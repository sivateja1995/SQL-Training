-- using of the exists
--- exists specifies the existance of the row in the table 
SELECT employee_id,
    first_name,
    last_name
FROM employees
WHERE EXISTS(
        SELECT 1
        FROM dependents
        WHERE dependents.employee_id = employees.employee_id
    );
--- selection of the single row from the 
select employee_id,
    first_name,
    last_name
from employees;

--- selection of the exists. 
where not exists (
        SELECT 1
        from dependents
        where dependents.employee_id = employees.employee_id
    );


    select * from departments;


    select employee_id,first_name from employees
    UNION 
    select department_id,department_name from departments;