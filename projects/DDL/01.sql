-- Active: 1723285658122@@127.0.0.1@5432@school
-- creation of the department table
create table department (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    is_active BOOLEAN NOT NULL DEFAULT TRUE
);

-- wip  creation of the teachers table
create table teachers (
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
create table class (
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
create table students (
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
create table subject (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) UNIQUE NOT NULL,
    teacher_id INTEGER REFERENCES teachers (id) oN DELETE SET NULL,
    class_id INTEGER REFERENCES class (id) ON DELETE SET NULL,
    creted_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    is_active BOOLEAN NOT NULL DEFAULT TRUE
);

-- creation of the table enrollment
create table enrollment (
    id SERIAL PRIMARY KEY,
    student_id INTEGER REFERENCES students (id) on delete set NULL,
    subject_id INTEGER REFERENCES subject (id) on delete set NULL,
    enrollment_date DATE NOT NULL DEFAULT CURRENT_DATE,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    is_active BOOLEAN NOT NULL DEFAULT TRUE
);

-- creation of the table marks
create table marks (
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
create table attendance (
    id SERIAL PRIMARY KEY,
    student_id INTEGER REFERENCES students (id) ON DELETE SET NULL,
    class_id INTEGER REFERENCES class (id) ON DELETE SET NULL,
    attendance_date DATE NOT NULL DEFAULT CURRENT_DATE,
    status VARCHAR(10) NOT NULL CHECK (
        status IN ('PRESENT', 'ABSENT', 'LATE')
    ),
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    is_active BOOLEAN NOT NULL DEFAULT TRUE
);

-- creation of the parents table
create table parents (
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

-- -- creation of the activities
create table activities (
    id serial primary key,
    name varchar(255) not null,
    description text default null,
    start_date timestamp not null,
    end_date timestamp not null,
    max_capacity bigint not null check (
        max_capacity >= 0
        and max_capacity <= 100
    ),
    created_at timestamp not null default current_timestamp,
    updated_at timestamp not null default current_timestamp,
    is_active boolean not null default true
);

-- student activities
create table student_activities (
    id serial primary key,
    student_id integer references students (id) on delete cascade,
    activity_id integer references activities (id) on delete set null,
    enrollment_date timestamp not null default current_timestamp,
    status varchar(100) check (
        status in (
            'progress',
            'completed',
            'dropped'
        )
    ),
    completion_date timestamp not null,
    created_at timestamp not null default current_timestamp,
    updated_at timestamp not null default current_timestamp,
    is_active boolean not null default true
);

-- Drop child tables first, then parents, then enums
--
--DROP TABLE IF EXISTS student_activities CASCADE;
--DROP TABLE IF EXISTS activities CASCADE;
--DROP TABLE IF EXISTS parents CASCADE;
--DROP TABLE IF EXISTS attendance CASCADE;
--DROP TABLE IF EXISTS marks CASCADE;
--DROP TABLE IF EXISTS enrollment CASCADE;
--DROP TABLE IF EXISTS subject CASCADE;
--DROP TABLE IF EXISTS students CASCADE;
--DROP TABLE IF EXISTS class CASCADE;
--DROP TABLE IF EXISTS teachers CASCADE;
--DROP TABLE IF EXISTS department CASCADE;
--
---- Finally drop enum
--DROP TYPE IF EXISTS GENDER CASCADE;




