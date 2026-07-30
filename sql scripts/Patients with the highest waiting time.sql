-- Find all patients with the highest waiting time
WITH WaitingTime AS (
    SELECT
        visit_id,
        patient_first_name,
        department,
        wait_time_minutes,
        RANK() OVER (ORDER BY wait_time_minutes DESC) AS waiting_rank
    FROM hospital_visits
)

SELECT
    visit_id,
    patient_first_name,
    department,
    wait_time_minutes
FROM WaitingTime
WHERE waiting_rank = 1;