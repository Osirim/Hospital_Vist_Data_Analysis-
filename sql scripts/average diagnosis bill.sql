-- average diagnosis bill
select diagnosis, concat('N',format(avg(bill_amount_ngn),0)) as total_bill
from hospital_db.hospital_visits
group by diagnosis
order by total_bill desc
