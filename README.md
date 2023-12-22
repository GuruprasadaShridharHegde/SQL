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
