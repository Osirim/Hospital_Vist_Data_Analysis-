-- hospital visit by department
select department, count(visit_id) as total_visit
from hospital_db.hospital_visits
group by department
order by total_visit desc