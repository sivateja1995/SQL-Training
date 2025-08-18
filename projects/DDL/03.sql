show databases;

select table_name
from information_schema.tables
WHERE
    table_schema = 'public'
    and table_catalog = 'school';

-- altering of the tables

select * from pg_catalog.pg_tables where schemaname = 'public';

-- subjects table
select * from parents;

-- adding a new column alter_phone_number to parents table
alter table parents
add COLUMN alter_phone_number VARCHAR(20) DEFAULT null;

-- changing of the column alter_phone_number to alter_number
alter table parents
rename column alter_phone_number to alter_number;