-- creating of the students table 
show databases;

use school;

show tables;


select * from students;


create database student_erp;
use student_erp;

-- creating of the students table


create table instructors(
    id int  PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(300) not NULL,
    email VARCHAR(300) not null UNIQUE,
    phone VARCHAR(300) not null UNIQUE
);


create table course(
    id int PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(300) not null UNIQUE
);



CREATE TABLE students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(300) NOT NULL,
    email VARCHAR(300) NOT NULL UNIQUE,
    phone VARCHAR(300) NOT NULL UNIQUE,
    instructor_id INT,
    FOREIGN KEY (instructor_id) REFERENCES instructors(id) ON DELETE SET NULL
);