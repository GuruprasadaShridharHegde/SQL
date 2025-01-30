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
