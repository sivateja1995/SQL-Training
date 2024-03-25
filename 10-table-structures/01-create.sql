-- creating of the table 
create table course(
    course_id int AUTO_INCREMENT primary key,
    course_name varchar(50) not null
);


-- creating the training table
create table  if NOT exists trainings(
    employee_id int,
    course_id int,
    taken_date date,
    primary key(employee_id,course_id)
);


--- identity of the table
 CREATE TABLE ranks (
    rank_id INT AUTO_INCREMENT,
    rank_name CHAR,
    PRIMARY key(rank_id)
);


CREATE TABLE leave_requests (
    request_id INT AUTO_INCREMENT,
    employee_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    leave_type INT NOT NULL,
    PRIMARY KEY(request_id)
);
