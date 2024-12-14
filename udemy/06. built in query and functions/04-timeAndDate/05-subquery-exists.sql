-- creation of the table
CREATE TABLE customers (
    -- for mysql use this code
    -- id INT PRIMARY KEY AUTO_INCREMENT,
    -- for postgresql use this code
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(200),
    last_name VARCHAR(200),
    email VARCHAR(200)
);

CREATE TABLE orders (
    -- for mysql use this code
    -- id INT PRIMARY KEY AUTO_INCREMENT,
    -- for postgresql use this code
    id SERIAL PRIMARY KEY,
    amount_billed NUMERIC(5, 2),
    customer_id INT REFERENCES customers
);

INSERT INTO
    customers (first_name, last_name, email)
VALUES (
        'Max',
        'Schwarz',
        'max@test.com'
    ),
    (
        'Manu',
        'Lorenz',
        'manu@test.com'
    ),
    (
        'Julia',
        'Meyers',
        'juli@test.com'
    );

INSERT INTO
    orders (amount_billed, customer_id)
VALUES (48.99, 1),
    (27.45, 2),
    (19.49, 1),
    (8.49, 3);

-- checking of the data using exists function
select EXISTS (
        select first_name, last_name
        from customers
        where
            email = 'max@test.com'
    )

select EXISTS ( select * from orders );

select * from orders;

-- using of the exists and subquery
select o.id
from orders as o
where
    exists (
        select c.email
        from customers as c
        where c.id = o.customer_id and c.email = 'manu@test.com'
    );