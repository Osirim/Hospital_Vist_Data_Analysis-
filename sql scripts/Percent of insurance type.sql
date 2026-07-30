-- Percent of insurance type
SELECT insurance_type, (count(visit_id)/(select count(visit_id) from hospital_visits)) * 100 as percent
FROM hospital_db.hospital_visits
group by insurance_type
order by percent desc;