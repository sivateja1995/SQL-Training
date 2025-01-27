-- Active: 1723285658122@@127.0.0.1@5432@test_index
create database test_index;

-- setting up of the users table
create table users (
    id SERIAL PRIMARY key,
    first_name VARCHAR(300) not NULL,
    last_name VARCHAR(300) not null,
    email VARCHAR(300) not null,
    salary int check (salary > 0)
);

-- creating address table
create table addresses (
    id SERIAL PRIMARY key,
    street VARCHAR(300) not null,
    house_number VARCHAR(30) not null,
    postal_code VARCHAR(20) not null,
    city VARCHAR(300) not null,
    user_id int REFERENCES users on delete CASCADE
);

-- inserting of the user table data
INSERT INTO
    users (
        first_name,
        last_name,
        email,
        salary
    )
VALUES (
        'Max',
        'Schwarz',
        'max@test.com',
        11000
    ),
    (
        'Manuel',
        'Lorenz',
        'manuel@test.com',
        12800
    ),
    (
        'Julie',
        'Barnes',
        'julie@test.com',
        15000
    ),
    (
        'Anna',
        'Mayers',
        'anna@test.com',
        13000
    ),
    (
        'Michael',
        'Smit',
        'michael@test.com',
        9000
    ),
    (
        'Frank',
        'Kenneth',
        'frank@test.com',
        10000
    );

INSERT INTO
    addresses (
        street,
        house_number,
        postal_code,
        city,
        user_id
    )
VALUES (
        'Teststreet',
        '5A',
        '12345',
        'Munich',
        2
    ),
    (
        'Some Place',
        '1',
        '12345',
        'Munich',
        1
    ),
    (
        'My Street',
        '101',
        '98765',
        'My City',
        3
    ),
    (
        'Foodstreet',
        '8',
        '41811',
        'New York',
        4
    ),
    (
        'Teststreet',
        '10',
        '12345',
        'Munich',
        5
    ),
    (
        'Teststreet',
        '11',
        '12345',
        'Munich',
        6
    );