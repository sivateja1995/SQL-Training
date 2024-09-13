-- Active: 1724412291255@@127.0.0.1@5432@relations
--mysql
-- creation of the user table
create table users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name varchar(300) NOT NULL,
    last_name varchar(300) NOT NULL,
    email VARCHAR(300) NOT NULL,
    address_id int REFERENCES address (id) ON DELETE RESTRICT
);

-- creation of the address table
create table address (
    id int primary key AUTO_INCREMENT,
    street VARCHAR(300) NOT NULL,
    house_number VARCHAR(20) NOT NULL,
    city_id int REFERENCES cities (id) ON DELETE RESTRICT
);
-- creation of the city table
create table cities (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(300) NOT NULL
);
-- postgres sql

create table users (
    id SERIAL PRIMARY KEY,
    first_name varchar(300) NOT NULL,
    last_name varchar(300) NOT NULL,
    email VARCHAR(300) NOT NULL,
    address_id int REFERENCES address (id) ON DELETE CASCADE
);

-- creation of the address table
create table address (
    id SERIAL primary key,
    street VARCHAR(300) NOT NULL,
    house_number VARCHAR(20) NOT NULL,
    city_id int REFERENCES cities (id) ON DELETE RESTRICT
);
-- creation of the city table
create table cities (
    id SERIAL PRIMARY KEY,
    name VARCHAR(300) NOT NULL
);