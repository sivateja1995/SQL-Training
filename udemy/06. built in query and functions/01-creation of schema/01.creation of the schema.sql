-- Active: 1731904226326@@127.0.0.1@5432@gym
create database gym;

-- mysql
-- creation of the membership table 
create table membership(
    id INT PRIMARY KEY AUTO_INCREMENT,
    membership_start DATE,
    membership_end DATE,
    last_checkin TIMESTAMP,
    last_checkout TIMESTAMP,
    consumption NUMERIC(5,2),
    first_name VARCHAR(300),
    last_name VARCHAR(300),
    price NUMERIC(5,2),
    billing_frequency INT,
    gender VARCHAR(200)
);










-- postgres 
-- creation of the membership table 
create table membership(
    id SERIAL PRIMARY KEY,
    membership_start DATE,
    membership_end DATE,
    last_checkin TIMESTAMP,
    last_checkout TIMESTAMP,
    consumption NUMERIC(5,2),
    first_name VARCHAR(300),
    last_name VARCHAR(300),
    price NUMERIC(5,2),
    billing_frequency INT,
    gender VARCHAR(200)
);


-- adding of the data to the membership table 
INSERT INTO membership (
    membership_start,
    membership_end,
    last_checkin,
    last_checkout,
    consumption,
    first_name,
    last_name,
    price,
    billing_frequency,
    gender
)
VALUES (
    '2021-10-01',
    NULL,
    '2021-10-01 05:17:36',
    '2021-10-01 06:20:45',
    26.49,
    'Max',
    'Schwarz',
    19.99,
    12,
    'male'
),(
    '2020-05-10',
    '2022-05-09',
    '2021-11-03 10:01:56',
    '2021-11-03 14:30:00',
    100.26,
    'Manu',
    'Lorenz',
    199.99,
    1,
    'male'
),(
    '2021-02-18',
    '2022-02-17',
    '2021-10-29 15:26:05',
    '2021-10-29 17:01:33',
    5.10,
    'Julie',
    'Barnes',
    199.99,
    1,
    'female'
);