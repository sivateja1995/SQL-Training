# DATABASE SETUP

database setup for the creation of the tables;

## TABLES

````table
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

<<<<<<< HEAD
-- union and joins

1. union is a clause that combines multiple result sets into one result set by appending rows
2. join clause merge multiple tables into one result set by appending columns.
=======
````

## union and joins

1. union is a clause that combines multiple result sets into one result set by appending rows
2. join clause merge multiple tables into one result set by appending columns.

#### updating of the foreign key

```sql
alter table <table name>
add foreign key <column_name> reference <related_table>
```

#### removing of the foreign key

```sql
alter table <table_name>
drop foreign key <constraint_name>
```
>>>>>>> origin/develop
