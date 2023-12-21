-- Identify queries for specific users
SELECT pg_terminate_backend(pg_stat_activity.procpid)
FROM pg_stat_activity
WHERE usename IN ('user_name1','user_name2','user_name3','user_name4');
