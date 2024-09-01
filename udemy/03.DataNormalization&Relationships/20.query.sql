select e.first_name, e.last_name, p.title
from
    employees as e
    inner join project_employee as ep on ep.employee_id = e.id
    inner join projects as p on p.id = ep.project_id;

-- fetching of the teams and building

select e.id, e.first_name, e.last_name, b.name as building, t.name as team
from
    employees as e
    inner join teams as t on t.id = e.team_id
    inner join company_building as b on t.building_id = b.id
where
    b.id = 2;

select * from employees;

insert into
    employees (
        first_name,
        last_name,
        birth_date,
        email,
        team_id
    )
values (
        'seshi',
        'vandana',
        '2000-10-07',
        'seshi.vandana@gmail.com',
        3
    );

    select * from teams;
select e.first_name,e.last_name,p.title from employees as e
left join project_employee as ep on ep.employee_id = e.id 
left join projects as p on p.id = ep.project_id; 
