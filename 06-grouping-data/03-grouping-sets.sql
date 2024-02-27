-- grouping of the sets 
use hr;
-- creating of the new table
create table inventory(
    warehouse varchar(255),
    product varchar(255) not null,
    model varchar(50) not null,
    quantity int,
    primary  key (warehouse,product,model)
);


drop table inventory;
-- inserting of the table values
INSERT INTO inventory(warehouse, product, model, quantity)
VALUES('San Jose', 'iPhone','6s',100);
INSERT INTO inventory(warehouse, product, model, quantity)
VALUES('San Fransisco', 'iPhone','6s',50);
INSERT INTO inventory(warehouse, product, model, quantity)
VALUES('San Jose','iPhone','7',50);
INSERT INTO inventory(warehouse, product, model, quantity)
VALUES('San Fransisco', 'iPhone','7',10);
INSERT INTO inventory(warehouse, product, model, quantity)
VALUES('San Jose','iPhone','X',150);
INSERT INTO inventory(warehouse, product, model, quantity)
VALUES('San Fransisco', 'iPhone','X',200);
INSERT INTO inventory(warehouse, product, model, quantity)
VALUES('San Jose','Samsung','Galaxy S',200);
INSERT INTO inventory(warehouse, product, model, quantity)
VALUES('San Fransisco','Samsung','Galaxy S',200);
INSERT INTO inventory(warehouse, product, model, quantity)
VALUES('San Fransisco','Samsung','Note 8',100);
INSERT INTO inventory(warehouse, product, model, quantity)
VALUES('San Jose','Samsung','Note 8',150);


select * from inventory;


-- grouping of the sets 
select warehouse,product,sum(quantity) qty from inventory group by warehouse,product;

select warehouse,sum(quantity) from inventory group by warehouse;


-- group by the product

select product,sum(quantity) from inventory group by product;

SELECT
    warehouse,
    product, 
    SUM(quantity) AS qty
FROM
    inventory
GROUP BY
    warehouse, product
WITH ROLLUP;