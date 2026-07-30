-- Diagnosis and total count
SELECT diagnosis, COUNT(diagnosis) AS count_dia
FROM hospital_db.hospital_visits
GROUP BY diagnosis;