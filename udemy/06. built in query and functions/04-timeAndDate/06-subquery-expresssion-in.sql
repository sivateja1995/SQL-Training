INSERT INTO
    customers (first_name, last_name, email)
VALUES (
        'Ken',
        'Brooks',
        'ken@test.com'
    );

-- fetching of the customers
select * from customers;
-- fetching the email of the customers who placed the order
select c.email
from customers as c
where
    c.id in (
        select o.customer_id
        from orders as o
    );

-- fetching the email using the joints
select c.email
from customers as c
    inner join orders as o on o.customer_id = c.id;
-- todo: the above is having the problem with the duplicates
-- instead of the using the or command we use the in operator
select id from customers where first_name in ('Max', 'Manu');

-- incase of the negate case using NOT IN
select id from customers where first_name not in ('Max', 'Manu');