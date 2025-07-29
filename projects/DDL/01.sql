-- Active: 1723285658122@@127.0.0.1@5432@school
-- creation of the department table 
create table
    department (
        id SERIAL PRIMARY KEY,
        name VARCHAR(255) NOT NULL,
        created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
        updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
        is_active BOOLEAN NOT NULL DEFAULT TRUE
    );

-- wip  creation of the teachers table 
create table
    teachers (
        id SERIAL PRIMARY KEY,
        name VARCHAR(255) NOT NULL,
        email VARCHAR(255) NOT NULL UNIQUE,
        phone VARCHAR(20) NOT NULL UNIQUE,
        hire_date DATE NOT NULL,
        department_id INTEGER REFERENCES department (id) ON DELETE SET NULL,
        created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
        updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
        is_active BOOLEAN NOT NULL DEFAULT TRUE
    );

--- creation of the class 
create table
    class (
        id SERIAL PRIMARY KEY,
        name VARCHAR(255) NOT NULL,
        section VARCHAR(50) NOT NULL,
        created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
        updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
        is_active BOOLEAN NOT NULL DEFAULT TRUE
    );

-- create enum type gender 
create type GENDER as ENUM ('MALE', 'FEMALE', 'OTHER');

-- students table creation 
create table
    students (
        id SERIAL PRIMARY KEY,
        first_name VARCHAR(255),
        last_name VARCHAR(255),
        dob DATE NOT NULL,
        gender GENDER,
        class_id INTEGER REFERENCES class (id) ON DELETE SET NULL,
        admission_date DATE NOT NULL DEFAULT CURRENT_DATE,
        creted_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
        updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
        is_active BOOLEAN NOT NULL DEFAULT TRUE
    );

-- creation of the subjects 
create table
    subject (
        id SERIAL PRIMARY KEY,
        name VARCHAR(255) UNIQUE NOT NULL,
        teacher_id INTEGER REFERENCES teachers (id) oN DELETE SET NULL,
        class_id INTEGER REFERENCES class (id) ON DELETE SET NULL,
        creted_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
        updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
        is_active BOOLEAN NOT NULL DEFAULT TRUE
    );

-- creation of the table enrollment 
create table
    enrollment (
        id SERIAL PRIMARY KEY,
        student_id INTEGER REFERENCES students (id) on delete set NULL,
        subject_id INTEGER REFERENCES subject (id) on delete set NULL,
        enrollment_date DATE NOT NULL DEFAULT CURRENT_DATE,
        created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
        updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
        is_active BOOLEAN NOT NULL DEFAULT TRUE
    );

-- creation of the table marks 
create table
    marks (
        id SERIAL PRIMARY key,
        student_id INTEGER REFERENCES students (id) on delete set null,
        subject_id integer REFERENCES subject (id) on delete set null,
        score BIGINT NOT NULL CHECK (
            score >= 0
            AND score <= 100
        ),
        exam_date DATE NOT NULL DEFAULT CURRENT_DATE,
        created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
        updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
        is_active BOOLEAN NOT NULL DEFAULT TRUE
    );

-- creation of the attendace table 
create table
    attendance (
        id SERIAL PRIMARY KEY,
        student_id INTEGER REFERENCES students (id) ON DELETE SET NULL,
        class_id INTEGER REFERENCES class (id) ON DELETE SET NULL,
        attendance_date DATE NOT NULL DEFAULT CURRENT_DATE,
        status VARCHAR(10) NOT NULL CHECK (status IN ('PRESENT', 'ABSENT', 'LATE')),
        created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
        updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
        is_active BOOLEAN NOT NULL DEFAULT TRUE
    );

-- creation of the parents table 
create table
    parents (
        id SERIAL PRIMARY KEY,
        student_id INTEGER REFERENCES students (id) ON DELETE SET NULL,
        father_name VARCHAR(255) DEFAULT NULL,
        mather_name VARCHAR(255) deFAULT NULL,
        email VARCHAR(255) NOT NULL UNIQUE,
        phone VARCHAR(20) NOT NULL UNIQUE,
        created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
        updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
        is_active BOOLEAN NOT NULL DEFAULT TRUE
    );




    -- drop table if exists parents cascade;
    -- drop table if exists attendance cascade;
    -- drop table if exists marks cascade;
    -- drop table if exists enrollment cascade;
    -- drop table if exists subject cascade;
    -- drop table if exists students cascade;
    -- drop table if exists class cascade;
    -- drop table if exists teachers cascade;
    -- drop table if exists department cascade;
    -- drop type if exists GENDER cascade;