-- Active: 1724412291255@@127.0.0.1@5432@relations
-- postgres SQL
-- projects
create table
    projects (
        id SERIAL PRIMARY KEY,
        title VARCHAR(300) NOT NULL,
        deadline DATE
    );

-- DEFINITION OF THE EMPLOYEE TABLE
-- COMPANY BUILDING
CREATE TABLE
    company_building (
        id SERIAL PRIMARY KEY,
        name VARCHAR(3000) NOT NULL
    );

-- TEAMS TABLE
create table
    teams (
        id SERIAL PRIMARY key,
        name VARCHAR(300) NOT NULL,
        building_id INT REFERENCES company_building (id) ON DELETE SET NULL
    );

create table
    employees (
        id SERIAL PRIMARY KEY,
        first_name varchar(300) NOT NULL,
        last_name VARCHAR(300) NOT NULL,
        birth_date DATE NOT NULL,
        email VARCHAR(200) UNIQUE NOT NULL,
        team_id INT DEFAULT 1 REFERENCES teams (id) ON DELETE SET DEFAULT
    );

-- DEFINITION OF THE INTRANET_ACCOUNTS
CREATE TABLE
    intranet_accounts (
        id SERIAL PRIMARY KEY,
        email VARCHAR(300) REFERENCES employees (email) ON DELETE CASCADE,
        password VARCHAR(200) NOT NULL
    );

create table
    project_employee (
        employee_id INT,
        project_id INT REFERENCES projects (id) ON DELETE CASCADE,
        primary key (employee_id, project_id),
        Foreign Key (employee_id) REFERENCES employees on delete CASCADE
    )