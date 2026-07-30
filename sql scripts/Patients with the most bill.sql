-- Patients with the most bills
SELECT patient_first_name, diagnosis, format(bill_amount_ngn,0) as bill
FROM hospital_db.hospital_visits
order by bill_amount_ngn desc
limit 10;