-- inserting data into the employees
insert into
    employees (
        first_name,
        last_name,
        birth_date,
        email
    )
values (
        'Max',
        'Schwarz',
        '1989-06-10',
        'max@test.com'
    );

--- inserting of the data into intranet_accounts 
insert into intranet_accounts(email,password) values ('max123@test.com','ranger25');