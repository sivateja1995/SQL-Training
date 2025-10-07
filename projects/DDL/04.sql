-- Active: 1723285658122@@127.0.0.1@5432@northwind
-- 
SELECT
    tablename
FROM
    pg_catalog.pg_tables
where
    schemaname = 'public';

-- creating the joins 
SELECT
    s.id,
    CONCAT (s.first_name, ' ', s.last_name) AS student_name,
    ARRAY_AGG (json_build_object ('subject', sb.name)) AS subjects
FROM
    students s
    LEFT JOIN enrollment e ON e.student_id = s.id
    LEFT JOIN subject sb ON sb.id = e.subject_id
GROUP BY
    s.id,
    s.first_name,
    s.last_name
order by
    id asc;

-- checking for the students who are not enrolled
select
    *
from
    students s
where
    s.id not in (
        select
            e.student_id
        from
            enrollment e
    );

-- inserting of the new student 
select
    *
from
    students s;

insert into
    students (
        first_name,
        last_name,
        dob,
        class_id,
        admission_date
    )
values
    ('mark', 'antony', '2006-03-05', 1, now ()),
    ('julia', 'roberts', '2005-07-15', 2, now ()),
    ('tom', 'hanks', '2004-11-20', 1, now ());

select
    *
from
    class;

-- check the students who took subject calculus and also check what other sujects they are taken
-- step 1: find the students who took calculus
select
    s3.name
from
    enrollment e3
    inner join subject s3 on s3.id = e3.subject_id
where
    e3.student_id in (
        select
            s.id
        from
            students s
            inner join enrollment e on e.student_id = s.id
            inner join subject sb on sb.id = e.subject_id
        where
            sb.name ilike 'cal%'
    )
    and s3.name not ilike 'cal%'
group by
    s3."name";

select
    s.id,
    CONCAT (s.first_name, ' ', s.last_name) AS student_name,
    ARRAY_AGG (json_build_object ('subject', sb.name)) AS subjects
from
    students s
    LEFT JOIN enrollment e ON e.student_id = s.id
    LEFT JOIN subject sb ON sb.id = e.subject_id
where
    s.id in (
        select
            e.student_id
        from
            enrollment e
            LEFT JOIN subject sb ON sb.id = e.subject_id
        where
            sb.name = 'Calculus'
    )
group by
    s.id,
    s.first_name,
    s.last_name;

-- find the duplicate students 
select
    s.first_name,
    s.last_name,
    count(*)
from
    students s
group by
    s.first_name,
    s.last_name,
    s.dob
HAVING
    count(*) > 1;



select * from northwind.coustomers;
    