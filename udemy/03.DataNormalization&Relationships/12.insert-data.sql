-- Active: 1724412291255@@127.0.0.1@5432@relations
-- mysql
-- insert of the data in the cities
insert into
    cities (name)
values ('Berlin'),
    ('New York'),
    ('London'),
    ('Delhi'),
    ('visakhapatnam'),
    ('Hyderabad'),
    ('Vijayawada');

-- inserting of the address
insert into
    address (street, house_number, city_id)
values ('teststreet', '8A', 3),
    ('some street', '10', 1),
    ('teststreet', '1', 3),
    ('mystreet', '1', 2),
    (
        'subedar mallareddy marg',
        '105',
        6
    );


select * from address;
-- adding the users to the table
insert into
    users (
        first_name,
        last_name,
        email,
        address_id
    )
values (
        'Max',
        'Schwarz',
        'max@test.com',
        2
    ),
    (
        'manuel',
        'lorenz',
        'manu@test.com',
        4
    ),
    (
        'julie',
        'Barnes',
        'julie@test.com',
        3
    ),
    (
        'siva',
        'teja',
        'siva@test.com',
        5
    );

select * from address;
-- postgres
insert into
    cities (name)
values ('Berlin'),
    ('New York'),
    ('London'),
    ('Delhi'),
    ('visakhapatnam'),
    ('Hyderabad'),
    ('Vijayawada');

-- inserting of the address into the cities
insert into
    address (street, house_number, city_id)
values ('teststreet', '8A', 3),
    ('some street', '10', 1),
    ('teststreet', '1', 3),
    ('mystreet', '1', 2),
    (
        'subedar mallareddy marg',
        '105',
        6
    );

insert into
    users (
        first_name,
        last_name,
        email,
        address_id
    )
values (
        'Max',
        'Schwarz',
        'max@test.com',
        2
    ),
    (
        'manuel',
        'lorenz',
        'manu@test.com',
        4
    ),
    (
        'julie',
        'Barnes',
        'julie@test.com',
        3
    ),
    (
        'siva',
        'teja',
        'siva@test.com',
        5
    );