--- group by sql  group by. 
--- group by allows you to group the rows based on values of one or more columns.
--- groping of the data 

--- employees group by the department
select  department_id from employees group by department_id;

--counting department wise head count;
select department_id, count(employee_id) as head_count from employees
group by department_id;


-- now using the NAMES
select department_name, count(employee_id) from employees e 
inner join  departments d  on 
d.department_id=e.department_id 
GROUP BY department_name;
