-- Total count of insurance type and revenue generated
SELECT insurance_type, format(count(insurance_type),0) as count, format(sum(bill_amount_ngn),0) as total_revenue
FROM hospital_db.hospital_visits
group by insurance_type
order by total_revenue desc