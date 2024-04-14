-- Active: 1706804737031@@127.0.0.1@3306@talently
-- modifying of the tables
-- mysql
-- 1.0 altering of the employer table 
alter table employers modify column yearly_revenue float (5, 2);

-- postgresSQL
-- 1.1 altering of the employer table in postgres
alter table employers 
alter column yearly_revenue 
set data type float;

SELECT column_name, data_type, character_maximum_length
FROM information_schema.columns
WHERE table_name = 'employers';


-- 2.0 changing of the user table  
-- mysql 
alter table users
MODIFY COLUMN full_name varchar(512);

desc users;

-- postgres
alter table users
alter column full_name 
set data type varchar(512);

SELECT column_name, data_type, character_maximum_length
FROM information_schema.columns
WHERE table_name = 'users';

