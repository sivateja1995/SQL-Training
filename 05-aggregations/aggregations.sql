use hr;


-- department wise average salary ADD
select department_name,ROUND(AVG(salary),0) as avg_salary from employees 
inner join departments using(department_id) 
GROUP BY department_name 
order by department_name;

-- department wise min salary 
select department_name,min(salary) as min_salary from employees 
inner join departments using(department_id) 
GROUP BY department_name 
order by department_name;

-- department wise max salary 
select department_name,max(salary) as max_salary from employees 
inner join departments using(department_id) 
GROUP BY department_name 
order by department_name;


--- finding the head count 
select department_name,count(*) as headcount from employees 
inner join departments using(department_id) 
GROUP BY department_name 
order by department_name;

--- 
