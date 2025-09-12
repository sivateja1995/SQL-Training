--show databases;

select table_name
from information_schema.tables
WHERE
    table_schema = 'public'
    and table_catalog = 'school';

-- altering of the tables
select * from pg_catalog.pg_tables where schemaname = 'public';


-- adding of the new column for the parents table 
alter table parents add  column alter_mobile_number varchar(200) default null;


-- changing of the column constrain 
alter table parents alter column alter_mobile_number type varchar(225);


-- chaning the column name 
alter table parents rename column alter_mobile_number to alter_number; 


-- dropping of the alter_number 
alter table parents drop column alter_number;




create table academic_years (
id serial primary key,
academic_year varchar(30)
);



-- changing the name of the table academic_years
alter table  academic_years rename to academic_year;

