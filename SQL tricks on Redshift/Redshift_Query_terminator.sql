-- Identify queries for specific users
SELECT pg_terminate_backend(pg_stat_activity.procpid)
FROM pg_stat_activity
WHERE usename IN ('guruhegde','kinzashabbir','quicksight','jenkins');
