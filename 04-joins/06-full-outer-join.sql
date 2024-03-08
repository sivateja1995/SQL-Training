-- full outer join 
-- in theory full outer join is the combination of the inner join and outer join . 
-- the full outer join includes all the rows of the joined tables weather or not tables has the matching row


create table if not exists fruits (
    fruit_id integer primary key,
    fruit_name varchar (255),
    basket_id INTEGER
);

create table  if not exists baskets (
    basket_id integer primary key,
    basket_name varchar(255) not null
);

-- inserting the values into the basket 
insert into baskets (basket_id,basket_name) values(1,'A'),(2,'B'),(3,'C');
-- inserting of the fruit VALUES
INSERT INTO fruits (
	fruit_id,
	fruit_name,
	basket_id
)
VALUES
	(1, 'Apple', 1),
	(2, 'Orange', 1),
	(3, 'Banana', 2),
	(4, 'Strawberry', NULL);


-- selection of the joins add. 

