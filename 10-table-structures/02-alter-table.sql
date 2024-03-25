-- adding the new column in the course table 
-- adding of the new column
----------  ALTER TABLE table_name
----------  ADD new_column data_type column_constrain [AFTER existing_column];
-- course table;
select *
from course;
alter table course
add fee numeric(10, 2)
after course_name;
-- adding the max limit row to the course 
alter table course
add max_limit int
after course_name;
select *
from course;
---- creation of the candidates 
create table candidate(
    id int primary key,
    first_name varchar(100) not null,
    last_name varchar(100) not null,
    email varchar(100) not null UNIQUE
); 

-- adding the column to the existing table
alter table candidate add column fluk text after email;


-- removing the column 'fluk' from the candidate
alter table candidate 
drop column fluk;
--- dropping the table 
drop table candidate;
-- truncate the the table 
CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(255),
    start_date DATE NOT NULL,
    end_date DATE NOT NULL
);

