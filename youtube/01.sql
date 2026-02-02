-- Active: 1723285658122@@127.0.0.1@5432@company
create database company;


-- creation of the employees table
create table employees (
    id serial primary key,
    first_name varchar(50) not null,
    last_name varchar(50) not null,
    gender varchar(10),
    salary numeric(10, 2));



Insert into employees(first_name,last_name,gender,salary) values ('Ben', 'Hoskins', 'Male', 70000);
Insert into employees(first_name,last_name,gender,salary) values ('Mark', 'Hastings', 'Male', 60000);
Insert into employees(first_name,last_name,gender,salary) values ('Steve', 'Pound', 'Male', 45000);
Insert into employees(first_name,last_name,gender,salary) values ('Ben', 'Hoskins', 'Male', 70000);
Insert into employees(first_name,last_name,gender,salary) values ('Philip', 'Hastings', 'Male', 45000);
Insert into employees(first_name,last_name,gender,salary) values ('Mary', 'Lambeth', 'Female', 30000);
Insert into employees(first_name,last_name,gender,salary) values ('Valarie', 'Vikings', 'Female', 35000);
Insert into employees(first_name,last_name,gender,salary) values ('John', 'Stanmore', 'Male', 80000);






-- select all employees
select * from employees;

delete from employees where id = 9;



-- selecting max salary 

select * from employees order by salary desc;
select  salary from (
    select DISTINCT(salary) from employees  order by salary desc limit 4
) order by salary limit 1;