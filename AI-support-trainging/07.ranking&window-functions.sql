-- Active: 1723285608966@@127.0.0.1@3306@e_commerce
drop table e_commerce.product_spend;

create table e_commerce.product_spend (
    id INT AUTO_INCREMENT PRIMARY KEY,
    category VARCHAR(300) NULL,
    product VARCHAR(300) NULL,
    user_id INT,
    spend DECIMAL(10, 2),
    transaction_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

insert into
    e_commerce.product_spend (
        category,
        product,
        user_id,
        spend,
        transaction_date
    )
values (
        'appliance',
        'microwave',
        169,
        49.99,
        '2022-08-28 16:00:00'
    ),
    (
        'appliance',
        'microwave',
        101,
        34.49,
        '2023-03-01 17:00:00'
    ),
    (
        'appliance',
        'microwave',
        101,
        64.95,
        '2023-07-08 16:00:00'
    ),
    (
        'appliance',
        'refrigerator',
        165,
        246.00,
        '2021-12-26 12:00:00'
    ),
    (
        'appliance',
        'refrigerator',
        123,
        299.99,
        '2022-03-02 11:00:00'
    ),
    (
        'appliance',
        'washing machine',
        123,
        219.80,
        '2022-03-02 11:00:00'
    ),
    (
        'appliance',
        'washing machine',
        123,
        220.00,
        '2022-07-27 04:00:00'
    ),
    (
        'electronics',
        '3.5mm headphone jack',
        101,
        7.99,
        '2022-10-07 16:00:00'
    ),
    (
        'electronics',
        'computer mouse',
        195,
        45.00,
        '2022-07-01 11:00:00'
    ),
    (
        'electronics',
        'vacuum',
        178,
        152.00,
        '2022-04-05 10:00:00'
    ),
    (
        'electronics',
        'vacuum',
        145,
        189.00,
        '2022-07-15 10:00:00'
    ),
    (
        'electronics',
        'vacuum',
        156,
        145.66,
        '2022-08-10 04:00:00'
    ),
    (
        'electronics',
        'wireless headset',
        156,
        249.90,
        '2022-07-08 10:00:00'
    ),
    (
        'electronics',
        'wireless headset',
        145,
        198.00,
        '2022-08-04 04:00:00'
    ),
    (
        'electronics',
        'wireless headset',
        215,
        19.99,
        '2022-09-03 16:00:00'
    );

select * from product_spend;

SELECT spend, SUM(spend) OVER (
        PARTITION BY
            product
        ORDER BY transaction_date
    ) AS running_total
FROM product_spend;

-- now implementing the same logic without order by
select
    transaction_date,
    product,
    sum(spend) over (
        PARTITION BY
            product
    ) as running_total
from product_spend;


-- 7 aggregate functions      
-- 1. COUNT
-- 2. SUM
-- 3. AVG
-- 4. MIN
-- 5. MAX
-- 6.first_value
-- 7.last_value

select category, product, count(*) over() as ROW_COUNT from product_spend;

-- partition with single column 
select category, product, count(*) over(partition by category) as category_count from product_spend; 


-- partition with two columns 
select category, product , count(*) over(partition by category, product) as category_product_count from product_spend;


-- calculating the spend by user 
select user_id, category, product,spend, sum(spend) over(partition by user_id order by transaction_date) as user_spend from product_spend;


-- calculating the average spend by user
SELECT 
  user_id,
  category, 
  product,
  transaction_date,
  spend,
  ROUND(AVG(spend) OVER (
    PARTITION BY user_id ORDER BY transaction_date),2) AS rolling_avg_spend
FROM product_spend;


select category, product, spend, min(spend) over(partition by product) as min_product_spend from product_spend;

select category, product, spend, max(spend) over(partition by product) as max_product_spend from product_spend;

show databases;

select * from hr.employees;

select  department,max(salary) over(PARTITION BY department ) as 'dept_max-salary' from hr.employees;

SELECT 
    department, 
    name, 
    salary
FROM 
    hr.employees
WHERE 
    salary = (SELECT MAX(salary) 
              FROM hr.employees e2 
              WHERE e2.department = hr.employees.department);


select department,name , salary from hr.employees where salary = (
    select max(salary) from hr.employees e2 where e2.department = hr.employees.department
);


-- find gaps in the sequence
select id, lead(id) over (order by id ) as next_id from e_commerce.orders;
select *  from e_commerce.orders;


WITH RECURSIVE employee_hierarchy AS (
SELECT id, name, manager_id, 1 AS level
FROM hr.employees WHERE manager_id IS NULL
UNION ALL
SELECT e.id, e.name, e.manager_id, h.level + 1
FROM hr.employees e
INNER JOIN employee_hierarchy h ON e.manager_id = h.id
)
SELECT * FROM employee_hierarchy;


select * from hr.employees;