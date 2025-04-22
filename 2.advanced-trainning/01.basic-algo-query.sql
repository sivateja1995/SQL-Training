-- sorting of the employees 
show tables;


select * from salaries;


select * from employees;

-- sorting employees from high to low;
select CONCAT(e.first_name,' ',e.last_name),s.salary,s.from_date, s.to_date from employees as e  
left join salaries as s on s.emp_no = e.emp_no
ORDER BY s.salary desc;

