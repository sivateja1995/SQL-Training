-- procedures
-- a procedure is precompiled collection of one or more sql statements that can be executed as a single unit  
/* ** DELIMITER
CREATE PROCEDURE PROCEDURENAME(IN/OUT DATATYPE)
BEGIN 
...
...
END 
DELIMITER;  ** */

SHOW DATABASES;


USE onesports_transactional_INDVIS0032;


SELECT * FROM account_course;



select * from course;
select c.id,c.course_name,o.label from course as c
left join options as o on c.level = o.id;

select * from account_batch;

-- create procedure to fetch the basket ball foundation deletails 

DELIMITER create procedure call_tennis_students()
BEGIN 
SELECT a.name,c.course_name  from account_batch as ab  
left join accounts as a on  ab.account_id = a.id 
left join course as c on c.id = ab.course_id
where ab.course_id = 146
end
DELIMITER;


call call_tennis_students();
