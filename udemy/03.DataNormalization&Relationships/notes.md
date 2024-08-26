# DATABASE SETUP

database setup for the creation of the tables;

## TABLES

```table
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

```

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

#### Udemy Bigger Example
#### Udemy Bigger Example

tables

1. Employees
2. teams
3. intranet_account
4. buildings
5. projects

### table structure for the above tables

| Employees  |
| ---------- |
| ID         |
| name       |
| birth_date |
| email      |

| Teams    |
| -------- |
| ID       |
| name     |
| building |

| Projects  |
| --------- |
| ID        |
| title     |
| dead_line |
| employees |

| Intranet_Accounts |
| ----------------- |
| email             |
| password          |

| Buildings |
| --------- |
| id        |
| name      |

#### relations

```text
Employees -1:n--> teams
Employees -n:n--> projects
Employees -1:1--> IntranetAccounts
Teams -1:n--> Building
```
