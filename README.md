# SQL

# SQL Interview Preparation Guide

## General Questions
Expect questions to assess your background and experience with SQL, such as:
- How much experience do you have with SQL?
- Which SQL flavors have you worked with? (e.g., MySQL, PostgreSQL, SQL Server, Oracle, etc.)
- How would you rate your SQL proficiency (beginner, intermediate, advanced)?

## Technical Questions
These questions evaluate your understanding of SQL concepts and fundamentals:

### 1. What is SQL?
SQL (Structured Query Language) is used for managing and manipulating relational databases.

### 2. Applications of SQL
SQL is used for data retrieval, insertion, updating, deletion, and database management.

### 3. SQL Statements
SQL statements are commands used to interact with databases, including querying, modifying, and defining data structures.

### 4. Types of SQL Commands
SQL commands are categorized into:
- **DDL (Data Definition Language)**: `CREATE`, `ALTER`, `DROP` (for defining database structures)
- **DML (Data Manipulation Language)**: `INSERT`, `UPDATE`, `DELETE` (for modifying data)
- **DQL (Data Query Language)**: `SELECT` (for retrieving data)
- **DCL (Data Control Language)**: `GRANT`, `REVOKE` (for managing user permissions)
- **TCL (Transaction Control Language)**: `COMMIT`, `ROLLBACK`, `SAVEPOINT` (for handling transactions)

### 5. Types of SQL Queries
- **Single-row queries** (returning one row)
- **Multi-row queries** (returning multiple rows)
- **Aggregate queries** (`SUM`, `COUNT`, `AVG`, etc.)
- **Subqueries** (nested queries)
- **Joins** (`INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`, `FULL JOIN` for combining data from multiple tables)

## Intermediate Level SQL Topics

### 1. Functions in SQL
SQL functions can be categorized as:
- **Aggregate Functions**: Perform calculations on multiple rows, returning a single value (e.g., `SUM`, `COUNT`, `AVG`, `MIN`, `MAX`).
- **Scalar Functions**: Operate on individual values and return a single value per row (e.g., `LENGTH`, `UCASE`, `NOW`).
- **Built-in Functions**: Predefined functions provided by SQL databases for common operations.
- **User-defined Functions (UDFs)**: Custom functions created by users to perform specific operations.

### 2. Advanced SQL Commands
These include:
- **Joins**: Combining data from multiple tables (`INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`, `FULL JOIN`).
- **Primary and Foreign Keys**: Enforcing referential integrity in relational databases.
- **Indexes**: Improving query performance by optimizing data retrieval.
- **SQL Relationships**: Understanding `one-to-one`, `one-to-many`, and `many-to-many` relationships between tables.

### 3. Database Design
Key concepts in designing an efficient database:
- **Normalization**: Organizing data to reduce redundancy and improve integrity (1NF, 2NF, 3NF, BCNF, etc.).
- **Denormalization**: Optimizing database performance by reducing joins and increasing redundancy.
- **DELETE vs TRUNCATE vs DROP**: Understanding when to use each for removing data or tables:
  - `DELETE`: Removes specific rows with a `WHERE` clause and can be rolled back.
  - `TRUNCATE`: Removes all rows from a table quickly but cannot be rolled back.
  - `DROP`: Deletes the entire table structure permanently.

### 4. Advanced Queries
- **Subqueries**: Queries within queries; can be nested or correlated.
- **Finding nth Highest Value**: Techniques like `LIMIT`, `OFFSET`, `DENSE_RANK()`, and `ROW_NUMBER()` to retrieve ranked values from a dataset.


### SQL Constraints:

SQL constraints are used to specify rules for the data in a table. Constraints are used to limit the type of data that can go into a table. This ensures the accuracy and reliability of the data in the table.


- The following constraints are commonly used in SQL:

- NOT NULL - Ensures that a column cannot have a NULL value
- UNIQUE - Ensures that all values in a column are different
- PRIMARY KEY - A combination of a NOT NULL and UNIQUE. Uniquely identifies each row in a table
- FOREIGN KEY - Prevents actions that would destroy links between tables
- CHECK - Ensures that the values in a column satisfies a specific condition
- DEFAULT - Sets a default value for a column if no value is specified
- CREATE INDEX - Used to create and retrieve data from the database very quickly

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,             -- Ensures unique and non-null values
    name VARCHAR(100) NOT NULL,          -- Ensures the name column cannot have NULL values
    email VARCHAR(255) UNIQUE,           -- Ensures email values are unique
    age INT CHECK (age >= 18),           -- Ensures age is at least 18
    department VARCHAR(50) DEFAULT 'IT', -- Sets 'IT' as the default value if not provided
    manager_id INT,  
    FOREIGN KEY (manager_id) REFERENCES employees(emp_id)  -- Ensures valid references to emp_id
);


## Query Optimization tips

1. Use Indexes for search or create index for commonly used column in WHERE conditions,
2. Use Numeric fields to store Numeric values instead of Character datatypes.
3. Replace UNION with UNION ALL where we dont have duplicate results. ( If duplicate data is not coming or if you dont want to remove duplicate data use this )
4. Minimum use of DISTINCT keyword.
5. Dont use select * FROM table_name.Instead use required columns only.
6. Don’t use <>     !=  as index will not be used for that and full table scan will be performed.
7. Use EXISTS () instead of COUNT() to discover whether the table has a specific record.
8. Use varchar / nvarchar instead of char because char takes extra spaces.
9. Use LIMIT to preview query results.

Note:
1. https://github.com/apache/superset/issues/6998
If you are using a reserved keyword as a table name or something you may get an error, so just enclosed with double quotes.


  "final" AS (
  
    SELECT
    
      vw.*,
      
      TRIM(gc.first_name||' '||gc.last_name) AS "influencer_name"
      
    FROM "vw" AS vw
