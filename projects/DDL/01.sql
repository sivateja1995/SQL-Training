-- Active: 1723285658122@@127.0.0.1@5432@school

-- creation of the department table 
create table department(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

-- wip  creation of the teachers table 
create table teachers(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    department_id INTEGER REFERENCES department(id) ON DELETE SET NULL
); 

