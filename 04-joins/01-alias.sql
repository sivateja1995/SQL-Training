
--using of the alias for the table column
select employee_id,concat(first_name,' ',last_name) as name  from employees;


-- salary and updated increment salary 
select employee_id,concat(first_name,' ',last_name) as name, salary, (salary * 1.1) as renewed, ((salary*1.1)-salary) as diff from employees order by  diff desc;