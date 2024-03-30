-- Active: 1706804737031@@127.0.0.1@3306@hr
-- creation of the tables
-- creating of the table 
create table course(
    course_id int AUTO_INCREMENT primary key,
    course_name varchar(50) not null
);


-- creating the training table
create table  if NOT exists trainings(
    employee_id int,
    course_id int,
    taken_date date,
    primary key(employee_id,course_id)
);


--- identity of the table
 CREATE TABLE ranks (
    rank_id INT AUTO_INCREMENT,
    rank_name CHAR,
    PRIMARY key(rank_id)
);


CREATE TABLE leave_requests (
    request_id INT AUTO_INCREMENT,
    employee_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    leave_type INT NOT NULL,
    PRIMARY KEY(request_id)
);

-- adding the new column in the course table 
-- adding of the new column
----------  ALTER TABLE table_name
----------  ADD new_column data_type column_constrain [AFTER existing_column];
-- course table;
select *
from course;
alter table course
add fee numeric(10, 2)
after course_name;
-- adding the max limit row to the course 
alter table course
add max_limit int
after course_name;
select *
from course;
---- creation of the candidates 
create table candidate(
    id int primary key,
    first_name varchar(100) not null,
    last_name varchar(100) not null,
    email varchar(100) not null UNIQUE
); 

-- adding the column to the existing table
alter table candidate add column fluk text after email;


-- removing the column 'fluk' from the candidate
alter table candidate 
drop column fluk;
--- dropping the table 
drop table candidate;
-- truncate the the table 
CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(255),
    start_date DATE NOT NULL,
    end_date DATE NOT NULL
);




desc projects;
-- setting the project_name field from varchar(255) to 512
alter table projects 
modify project_name varchar (510);

-- adding the new column to the project 
alter table projects
add column created_by varchar(255) null;

--- adding manager after the project name
alter table projects
add column manager varchar(255)
after project_name; 


-- droping of the table projects
drop table projects;

--- dropping means completely removing of the table


