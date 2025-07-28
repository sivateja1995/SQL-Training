-- Active: 1723285658122@@127.0.0.1@5432@school
-- creation of the department table 
create table
    department (id SERIAL PRIMARY KEY, name VARCHAR(255) NOT NULL);

-- wip  creation of the teachers table 
create table
    teachers (
        id SERIAL PRIMARY KEY,
        name VARCHAR(255) NOT NULL,
        email VARCHAR(255) NOT NULL UNIQUE,
        phone VARCHAR(20) NOT NULL UNIQUE,
        hire_date DATE NOT NULL,
        department_id INTEGER REFERENCES department (id) ON DELETE SET NULL
    );


    --- creation of the class 
    create table class(
        id SERIAL PRIMARY KEY,
        name VARCHAR(255) NOT NULL,
        section VARCHAR(50) NOT NULL
    );


-- create enum type gender 
create type GENDER as ENUM('MALE', 'FEMALE', 'OTHER');


    -- students table creation 
    create table students (
        id SERIAL PRIMARY KEY,
        first_name VARCHAR(255),
        last_name VARCHAR(255),
        dob DATE NOT NULL,
        gender GENDER ,
        class_id INTEGER REFERENCES class(id) ON DELETE SET NULL,
        admission_date DATE NOT NULL DEFAULT CURRENT_DATE
    );


    -- creation of the subjects 
    create table subject (
        id SERIAL PRIMARY KEY,
        name VARCHAR(255) UNIQUE NOT NULL,
        teacher_id INTEGER REFERENCES teachers(id) oN DELETE SET NULL,
        class_id INTEGER REFERENCES class(id) ON DELETE SET NULL
    );


    -- creation of the table enrollment 
    create table enrollment(
        id SERIAL PRIMARY KEY,
        student_id INTEGER REFERENCES students(id) on delete set NULL,
        subject_id INTEGER REFERENCES subject(id) on delete set NULL,
        enrollment_date DATE NOT NULL DEFAULT CURRENT_DATE
    );

    