-- data manipulation 
show databases;
use hr;

INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id) VALUES (1400,'2014 Jabberwocky Rd','26192','Southlake','Texas','US');

-- INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id) VALUES (1400,'2014 Jabberwocky Rd','26192','Southlake','Texas','US');
INSERT INTO departments(department_id,department_name,location_id) VALUES (6,'IT',1400);

commit ;
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (103,'Alexander','Hunold','alexander.hunold@sqltutorial.org','590.423.4567','1990-01-03',9,9000.00,102,6);

INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (104,'Bruce','Ernst','bruce.ernst@sqltutorial.org','590.423.4568','1991-05-21',9,6000.00,103,6);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (105,'David','Austin','david.austin@sqltutorial.org','590.423.4569','1997-06-25',9,4800.00,103,6);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (106,'Valli','Pataballa','valli.pataballa@sqltutorial.org','590.423.4560','1998-02-05',9,4800.00,103,6);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (107,'Diana','Lorentz','diana.lorentz@sqltutorial.org','590.423.5567','1999-02-07',9,4200.00,103,6);


commit ;

select * from departments;
select * from employees order by salary  DESC;

select e.first_name , d.department_name from employees as e , departments as d WHERE  e.department_id=d.department_id;
commit ;

show databases;
use classicmodels;
show tables;
 
commit ;


--- using orderby statement

show tables;
select * from customers;

select * from customers order by creditLimit  desc;
select * from orders;

create database mock;
use mock;
show tables;






-- creating the table cutomers;
create table customers(
 id serial primary key,
 name varchar(100),
 age  integer,
 address text,
 salary float
);

-- inserting of the data into the cutomers 
insert into customers(name,age,address,salary) values ('Ramesh', 32,'Ahmedabad',2000.00);
insert into customers(name,age,address,salary) values ('Khiln',25,'Delhi',1500.00);
insert into customers (name,age,address, salary) values ('kaushik',23,'Kota',2000.00);
insert into customers (name,age,address, salary) values ('Chaitali',25,'Mumbai',6500.00);
insert into customers (name,age,address, salary) values ('Hardial',27,'Bhopal',8500.00);
insert into customers (name,age,address, salary) values ('komal',22,'MP',4500.00);



commit;
select * from employees;
-- using the group by for the DML 
use hr;
-- grouping the employees as per the project manager 
select manager_id ,count(manager_id) from employees group by manager_id;

select * from employees;

-- implementing the having 
select manager_id ,count(manager_id) from employees group by manager_id having  manager_id =100 ; 



-- joins 



