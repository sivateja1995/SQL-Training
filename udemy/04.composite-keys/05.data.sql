insert into
    employees (
        first_name,
        last_name,
        email,
        supervisor_id
    )
values
    -- ('Manuel', 'Lorenz','manuel@yopmail.com', 1)
    (
        'Julie',
        'Barnes',
        'julie@yopmail.com',
        7
    );

select *
from employees as e1
    inner join employees as e2 on e1.supervisor_id = e2.id;

-- creating of the users table
create table users (
    id SERIAL PRIMARY key,
    first_name varchar(300) NOT NULL
);

create table users_friends (
    user_id INT REFERENCES users on DELETE CASCADE,
    friend_id INT REFERENCES users on DELETE CASCADE,
    PRIMARY KEY (user_id, friend_id)
)