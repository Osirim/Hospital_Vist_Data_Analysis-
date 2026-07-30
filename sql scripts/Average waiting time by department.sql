-- Average waiting time by department in hours
SELECT
    department,
    CONCAT(ROUND(AVG(wait_time_minutes) / 60), ' hr') AS avg_wait_time
FROM hospital_db.hospital_visits
GROUP BY department;