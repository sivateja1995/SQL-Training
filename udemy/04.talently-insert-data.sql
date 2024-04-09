-- Active: 1711887556119@@127.0.0.1@5432@talently
use talently;

desc users;

--1.0 inserting of the data in the mysql and postgres user table
insert into
    users (yearly_salary, full_name, current_status)
values
    (19000, 'sivateja', 'employed');

insert into
    users (yearly_salary, full_name, current_status)
values
    (0, 'raghu ram', 'unemployed');

insert into
    users (yearly_salary, full_name, current_status)
values
    (200000, 'vijayanath', 'self-employed');

insert into
    users (yearly_salary, full_name, current_status)
values
    (19000, 'sivateja', 'employed');

insert into
    users (yearly_salary, full_name, current_status)
values
    (25000, 'Julie Barens', 'employed'),
    (0, 'Machiel Smith', 'unemployed');

select
    *
from
    users;

commit;

--- 2.0 inserting the data into the employers table in the postgres and mysql.
insert into
    employers (
        company_name,
        company_address,
        yearly_revenue,
        is_hiring
    )
values
    (
        'Learning Inc',
        'EducationStreet 12,London',
        0.87,
        true
    );

insert into
    employers (
        company_name,
        company_address,
        yearly_revenue,
        is_hiring
    )
values
    (
        'Big oil Inc',
        'SlipperyStreet 110,Houston',
        112.55,
        false
    ),
    (
        'Hipster Food',
        'AvocadoStreet,Berlin',
        6.12,
        true
    );

commit;

select * from employers;

--3.0 insert data into the conversation
insert into
    conversation (user_name, employer_name, message)
values
    (
        'sivateja',
        'Learning Inc',
        'hi, i am learning'
    );


-- altering of the conversation table

select * from conversation;
alter table conversation
add column id serial PRIMARY key;

commit;