-- Active: 1723285608966@@127.0.0.1@3306@admin
select NOW() as time;

-- to fetch the current time
select CURRENT_TIME;

-- select current_date
select CURRENT_DATE;

select DATEDIFF('2025-04-01', CURRENT_DATE) as days_difference;

create database project;

-- using of the database project
use project;

-- CREATING THE PROJECTS TABLE;
CREATE TABLE project (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(300) NOT NULL,
    start_date DATETIME NOT NULL,
    end_date DATETIME NOT NULL,
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);


-- INSERTING THE VALUES IN THE PROJECT 
INSERT INTO project (name,start_date,end_date) VALUES ('test','2025-03-01','2025-05-31');


select * from project;


select DATEDIFF(p.end_date,p.start_date) as total_days from project as p;