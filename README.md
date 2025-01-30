# SQL
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

1. General Questions
These questions help interviewers understand your background and experience with SQL. They may ask:

How much experience do you have with SQL?
Which SQL flavors have you worked with? (e.g., MySQL, PostgreSQL, SQL Server, Oracle, etc.)
How would you rate your SQL proficiency (beginner, intermediate, advanced)?
2. Technical Questions
These questions assess your understanding of SQL concepts and fundamentals:

What is SQL? (Structured Query Language for managing databases)
What are the main applications of SQL? (Data retrieval, manipulation, and management)
What are SQL statements? (Commands used to interact with databases)
What are the types of SQL commands?
DDL (Data Definition Language) – CREATE, ALTER, DROP (used to define database structures)
DML (Data Manipulation Language) – INSERT, UPDATE, DELETE (modifies data)
DQL (Data Query Language) – SELECT (retrieves data)
DCL (Data Control Language) – GRANT, REVOKE (manages user permissions)
TCL (Transaction Control Language) – COMMIT, ROLLBACK, SAVEPOINT (manages transactions)
What are the different types of SQL queries? (Single-row, multi-row, aggregate, subqueries, joins, etc.)
