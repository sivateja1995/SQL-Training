# DATABASE SETUP

database setup for the creation of the tables;

## TABLES

| Users     |
| --------- |
| Full Name |
| Email     |
| Address   |

can be normalized into


| Users      |
| ---------- |
| ID         |
| first name |
| last name  |
| email      |
| addressId  |

| Address      |
| ------------ |
| ID           |
| street       |
| House Number |
| city ID      |

| cities |
| ------ |
| ID     |
| Name   |


