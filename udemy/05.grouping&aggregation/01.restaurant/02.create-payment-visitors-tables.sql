-- postgres
create table payment_methods (
    id serial PRIMARY key,
    name varchar(200)
);

create table tables (
    id SERIAL PRIMARY KEY,
    num_seats INT,
    category VARCHAR(200)
);

-- mysql

create table payment_methods (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(300)
);

create table tables (
    id INT PRIMARY KEY AUTO_INCREMENT,
    num_seat INT,
    category VARCHAR(200)
);