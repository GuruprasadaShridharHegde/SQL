SELECT
     -- procpid,
     -- datname,
     usename AS user_name,
     count(usename) as active_sessions
     -- current_query,
     -- query_start
FROM
     pg_catalog.pg_stat_activity
group by user_name
order by active_sessions desc;
