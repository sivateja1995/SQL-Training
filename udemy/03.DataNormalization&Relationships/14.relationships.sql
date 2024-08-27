-- postgres SQL

-- DEFINITION OF THE EMPLOYEE TABLE
create table employees (
    id SERIAL PRIMARY KEY,
    first_name varchar(300) NOT NULL,
    last_name VARCHAR(300) NOT NULL,
    birth_date DATE NOT NULL,
    email VARCHAR(200) UNIQUE NOT NULL
);

-- DEFINITION OF THE INTRANET_ACCOUNTS
CREATE TABLE intranet_accounts (
    id SERIAL PRIMARY KEY,
    email VARCHAR(300) REFERENCES employees (email) ON DELETE CASCADE,
    password VARCHAR(200) NOT NULL
);