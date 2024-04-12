-- fetching of the databases from the postgres
select pg.datname from pg_database as pg;

-- fetching of the tables from the pg_database;
select * from information_schema.tables;