-- Active: 1738838544134@@127.0.0.1@3306@admin
use employees;

show tables;

select DISTINCT (e.emp_no),
    CONCAT(
        e.first_name,
        " ",
        e.last_name
    ) as name,
    e.gender,
    s.salary,
    s.from_date,
    s.to_date
from employees as e
    left join salaries as s on s.emp_no = e.emp_no
ORDER BY e.emp_no, s.to_date desc, s.salary desc;

-- window function
SELECT e.emp_no, CONCAT(
        e.first_name, ' ', e.last_name
    ) AS name, e.gender, s.salary, s.from_date, s.to_date
FROM employees AS e
    CROSS JOIN LATERAL (
        SELECT s.salary, s.from_date, s.to_date
        FROM salaries AS s
        WHERE
            s.emp_no = e.emp_no
        ORDER BY s.to_date DESC, s.salary DESC
        LIMIT 1
    ) AS s
ORDER BY s.salary DESC;

SELECT DISTINCT
    s.emp_no,
    s.salary,
    s.from_date,
    s.to_date,
    e.first_name
FROM salaries AS s
    LEFT JOIN employees AS e ON e.emp_no = s.emp_no
ORDER BY s.to_date DESC, s.emp_no;

--- limiting 5 employees only
SELECT e.emp_no, CONCAT(
        e.first_name, ' ', e.last_name
    ) AS name, e.gender, s.salary, s.from_date, s.to_date
FROM employees AS e
    CROSS JOIN LATERAL (
        SELECT s.salary, s.from_date, s.to_date
        FROM salaries AS s
        WHERE
            s.emp_no = e.emp_no
        ORDER BY s.to_date DESC, s.salary DESC
        LIMIT 1
    ) AS s
ORDER BY s.salary DESC
limit 5;

select emp_no
from salaries
where
    salary = (
        select max(salary)
        from salaries
    );

select * from employees where emp_no = 43624;

--find the duplicates
show tables;

select s.emp_no, count(*) as 'occurrences'
from salaries as s
GROUP BY
    s.emp_no
HAVING
    count(*) > 1
ORDER BY occurrences desc;

show databases;

use ecommerce;

show tables;

select *
from ecommerce.`Ecommerce_Consumer_Behavior_Analysis_Data` as ec;

select
from ecommerce.`Ecommerce_Consumer_Behavior_Analysis_Data` as ec;

4

show DATABASEs;

create database e_commerce;

use e_commerce;

-- for my sql  e_commerce table

create table customers (
    id INT AUTO_INCREMENT PRIMARY key,
    name VARCHAR(300),
    email VARCHAR(300),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

drop table e_commerce.products;

create table products (
    id INT AUTO_INCREMENT PRIMARY key,
    name VARCHAR(300),
    price DECIMAL(10, 2),
    category VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

create table orders (
    id INT AUTO_INCREMENT PRIMARY key,
    customer_id INT,
    product_id INT,
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    quantity INT,
    amount DECIMAL(10, 2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (customer_id) REFERENCES customers (id),
    FOREIGN KEY (product_id) REFERENCES products (id)
);

INSERT INTO
    e_commerce.customers (name, email)
VALUES (
        'Alice Johnson',
        'alice@example.com'
    ),
    (
        'Bob Smith',
        'bob@example.com'
    ),
    (
        'Charlie Davis',
        'charlie@example.com'
    ),
    (
        'Alice Johnson',
        'alice2@example.com'
    );
-- Duplicate name
INSERT INTO
    products (name, price, category)
VALUES ('Laptop', 1000, 'Electronics'),
    ('Phone', 600, 'Electronics'),
    ('Tablet', 300, 'Electronics'),
    (
        'Headphones',
        50,
        'Accessories'
    );

INSERT INTO
    e_commerce.orders (
        customer_id,
        product_id,
        quantity,
        amount
    )
VALUES (1, 1, 1, 1000),
    (1, 2, 2, 1200),
    (2, 1, 1, 1000),
    (2, 3, 1, 300),
    (3, 2, 1, 600),
    (4, 1, 1, 1000),
    (4, 2, 1, 600),
    (4, 3, 1, 300);
-- Duplicate order for customer_id = 4

--- find the duplicate customer name
select name, count(*)
from e_commerce.customers
group by
    name
HAVING
    COUNT(*) > 1;

--find the top three customers by spending

select c.name, sum(o.amount) as 'total_spending'
from e_commerce.orders as o
    left join e_commerce.customers as c on c.id = o.customer_id
group by
    c.name
order by total_spending desc;

--  retriving the orders with no customer detials
select *
from e_commerce.orders as o
where
    o.customer_id not in(
        select id
        from customers
    )
    or customer_id is null;

select * from orders;

insert into
    e_commerce.orders (
        customer_id,
        product_id,
        order_date,
        quantity,
        amount
    )
values (
        null,
        1,
        '2023-10-01 10:00:00',
        2,
        2000
    );

show databases;

create database hr;

use hr;

create table hr.employees (
    id INT AUTO_INCREMENT PRIMARY key,
    name VARCHAR(300),
    department VARCHAR(100),
    salary DECIMAL(10, 2),
    manager_id int NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO
    hr.employees (
        name,
        department,
        salary,
        manager_id
    )
VALUES ('John Doe', 'IT', 70000, NULL),
    ('Jane Smith', 'IT', 80000, 1),
    (
        'Emily Johnson',
        'HR',
        60000,
        NULL
    ),
    ('Mike Brown', 'HR', 50000, 3),
    (
        'Robert Green',
        'Finance',
        90000,
        NULL
    ),
    (
        'Sarah White',
        'Finance',
        95000,
        5
    ),
    ('David Black', 'IT', 75000, 1),
    ('Laura Blue', 'HR', 62000, 3),
    (
        'Chris Red',
        'Finance',
        92000,
        5
    ),
    ('Anna Yellow', 'IT', 72000, 1);

-- finding of the second heighest salary
select max(salary) as 'second_highest_salary'
from hr.employees
where
    salary < (
        select max(salary)
        from hr.employees
    );

-- finding the third highest salary
select max(salary) as 'third_highest_salary'
from hr.employees
where
    salary < (
        select max(salary)
        from hr.employees
        where
            salary < (
                select max(salary)
                from hr.employees
            )
    );

-- finding the highest salary
select max(salary) from hr.employees;

-- second most expensive product
select max(price)
from e_commerce.products
where
    price < (
        select max(price)
        from e_commerce.products
    );

-- third most expensive product

select max(price)
from e_commerce.products
where
    price < (
        select max(price)
        from e_commerce.products
        where
            price < (
                select max(price)
                from e_commerce.products
            )
    );

select name, salary, rank() over (
        order by salary desc
    ) as 'rank'
from hr.employees;