--ALTER DATABASE template1 REFRESH COLLATION VERSION;
--creation of the database 
create database company;

--show databases;
SELECT datname FROM pg_catalog.pg_database;

--selection of the database
set search_path to company;


-- show of the table name 
--select * from pg_catalog.pg_tables where schemaname ='public';


-- creation of the emp table
create table EMPLOYEES(
id serial not null primary key,
name varchar,
position varchar,
salary varchar
);


-- inserting of the data for the employees 
insert into employees  (name,position,salary) values ('jane' , 'Manager', '50000');
insert into employees  (name,position,salary) values ('john' , 'Clerk', '30000');
insert into employees  (name,position,salary) values ('Bob' , 'Enginner', '40000');
insert into employees  (name,position,salary) values ('Bill' , 'sad', '47000');

-- show the list of the employees
select * from employees;


--- update of the employee
update employees  set salary =45000 where id=3;



-- delete of the employee with position as sad
delete from employees where position='sad';


--- data definitions language (DDL)
-- 1. create
-- 2. drop 
-- 3. alter 
-- 4. truncate 
-- 5. rename 


create table student(
name varchar(140),
age varchar (100)
);


drop table student;


create table students(
name varchar(140),
age  smallint,
guardian varchar(200)
);


-- adding of the column to the table 
alter table students add email varchar(100);
alter table  students add phone varchar(10);
alter table students add isAxctive boolean default true;
alter table students add isActive boolean default true;

-- list of the tables 
select * from students;


--deletign of the isAxctive column 
alter table students drop column isAxctive;


-- altering the datatype of the table 
--alter table students modify column phone varchar(12); (not working )


-- truncate of the table 
truncate table students;


select * from students;


-- inserting the data into the students
--insert into students (name,age,guardian,email,phone) values ('siva',24,'murthy','sivateja@yopmail.com','8008898404');
insert into students (name,age,guardian,email,phone,isactive) values ('ravi',25,'murthy','ravia@yopmail.com','8008898405',true);
insert into students (name,age,guardian,email,phone) values ('mayank',18,'ng','mayank@yopmail.com','8008898909');
insert into students (name,age,guardian,email,phone) values ('keshav',21,'keshav','keshav@yopmail.com','8959189522');


-- list of the students
select * from students;



-- updating of the student 
UPDATE students
SET isactive = false
WHERE email = 'keshav@yopmail.com';


--- show of the tables;
SELECT * FROM pg_catalog.pg_tables WHERE schemaname = 'public';




