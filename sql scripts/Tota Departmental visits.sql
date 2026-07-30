-- Total number of hospital visits by departments
SELECT department, count(*) as department_visit
FROM hospital_db.hospital_visits
group by department;