use hr;

-- selection fo the employees 
select * from employees;

--- difference between the having and where clause.
select 
    manager_id,
    first_name,
    last_name
    count(employee_id) as direct_reports
FROM
    employees
 where manager_id not NULL
 group by manager_id;

---  