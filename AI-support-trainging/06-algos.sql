-- Active: 1723285608966@@127.0.0.1@3306@employees
use employees;
show tables;


select * from employees as e
left join salaries as s on s.emp_no = e.emp_no
group by e.emp_no;
