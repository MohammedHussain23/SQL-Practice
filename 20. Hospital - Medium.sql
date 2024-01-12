/* For each doctor, display their id, full name, and the first and last admission date they attended  */

SELECT
  d.doctor_id,
  CONCAT(d.first_name, ' ', d.last_name) AS full_name,
  MIN(a.admission_date) AS first_admission,
  MAX(a.admission_date) AS latest_admission
FROM doctors d
  JOIN admissions a ON d.doctor_id = a.attending_doctor_id
GROUP BY 1;
