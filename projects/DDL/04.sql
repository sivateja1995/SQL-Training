-- 


SELECT tablename  FROM pg_catalog.pg_tables where schemaname = 'public';


-- creating the joins 
SELECT 
    s.id, 
    CONCAT(s.first_name, ' ', s.last_name) AS student_name,
    ARRAY_AGG(
        json_build_object('subject', sb.name)
    ) AS subjects
FROM students s
LEFT JOIN enrollment e ON e.student_id = s.id
LEFT JOIN subject sb ON sb.id = e.subject_id
GROUP BY s.id, s.first_name, s.last_name
order by id asc;


-- checking for the students who are not enrolled
select * from enrollment e  where e.student_id   in (select s.id from students s );


-- check the students who took subject calculus and also check what other sujects they are taken





