# Data Types in Databases

## Text-Based Data Types:
1. **CHAR(x)**: 
    - Fixed-length text.
    - Saves the data and fills the remaining space with blank spaces.
    - Example: `CHAR(5)` will store "abc" as "abc    ".

2. **VARCHAR(x)**: 
    - Variable-length text.
    - Saves the data and truncates the remaining space.
    - Example: `VARCHAR(5)` will store "abc" as "abc".

3. **TEXT**: 
    - Used to store long texts with unlimited length.
    - Ideal for storing large paragraphs or documents.

### SQL Variants:
- **TEXT**, **SMALLTEXT**, **MEDIUMTEXT**: Variants for different text sizes.

### MySQL Variants:
- MySQL supports **TINYTEXT**, **TEXT**, **MEDIUMTEXT**, and **LONGTEXT** for varying text sizes.

### PostgreSQL Variants:
- PostgreSQL supports **CHAR**, **VARCHAR**, and **TEXT** for text-based data types.

---

## Numeric-Based Data Types:
1. **INT**: 
    - Integer values.
    - Variants: `SMALLINT`, `BIGINT` for smaller or larger ranges.

2. **DECIMAL / NUMERIC**: 
    - Used to store fractional numbers with fixed precision.
    - Example: `DECIMAL(5,2)` stores numbers like `123.45`.

3. **FLOAT / REAL**: 
    - Used for storing numbers with floating-point values.
    - Example: `FLOAT` can store `123.456789`.

### MySQL Variants:
- MySQL supports **TINYINT**, **SMALLINT**, **MEDIUMINT**, **INT**, and **BIGINT** for integers.
- For floating-point numbers, it supports **FLOAT**, **DOUBLE**, and **DECIMAL**.

### PostgreSQL Variants:
- PostgreSQL supports **SMALLINT**, **INTEGER**, **BIGINT**, **NUMERIC**, and **REAL**.

---

## Date and Time Data Types:
1. **DATE**: 
    - Stores only the date (e.g., `YYYY-MM-DD`).

2. **DATETIME / TIMESTAMP**: 
    - Stores both date and time (e.g., `YYYY-MM-DD HH:MM:SS`).

### MySQL Variants:
- MySQL supports **DATE**, **DATETIME**, **TIMESTAMP**, **TIME**, and **YEAR**.

### PostgreSQL Variants:
- PostgreSQL supports **DATE**, **TIMESTAMP**, **TIMESTAMPTZ** (with timezone), and **TIME**.

---

## Other Data Types:
1. **BOOLEAN**: 
    - Stores `TRUE` or `FALSE` values.

2. **JSON**: 
    - Used to store data in JSON format.
    - Ideal for storing structured data.

### MySQL Variants:
- MySQL supports **BOOLEAN** (stored as `TINYINT(1)`) and **JSON**.

### PostgreSQL Variants:
- PostgreSQL supports **BOOLEAN** and **JSON/JSONB** for efficient JSON storage.

---

## Storing Images in Databases:
- **Best Practice**: 
  - Images are not stored directly in databases.
  - Instead, save the images in a folder and store the file path in the database.
  - Example: `/images/profile_picture.jpg` is stored as a path in the database.

### MySQL and PostgreSQL:
- Both databases recommend storing image paths rather than binary image data for better performance and scalability.
- If binary storage is required, use **BLOB** in MySQL or **BYTEA** in PostgreSQL.

