-- inner join 
-- the process of linking of the tables is called the join. 
--- there is different types of the joins 
-- 1 . inner JOIN
-- 2. left join 
--3. right join 
-- 4. full outer join


-- selecting the departments in 1,2,3
select department_id,department_name from departments where department_id in (1,2,3);


-- listing of the employees from department_id in 1,2,3
select first_name,last_name,department_id from employees where department_id in (1,2,3) order by department_id;


-- now performing the inner for the departments and employees. 
select first_name,last_name, employees.department_id , departments.department_id,department_name
from employees
inner join departments
on departments.department_id = employees.department_id
where employees.department_id in (1,2,3);

select * from jobs;

--- joining the jobs,employees and departments table 
select first_name,last_name, d.department_name, j.job_title
from employees as e
inner join departments as d on d.department_id = e.department_id
inner join jobs as j on j.job_id = e.job_id;