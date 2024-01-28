/* We need a breakdown for the total amount of admissions each doctor has started each year.
 Show the doctor_id, doctor_full_name, specialty, year, total_admissions for that year */

SELECT
  d.doctor_id,
  CONCAT(d.first_name, ' ', d.last_name) AS doctor_full_name,
  d.specialty,
  YEAR(a.admission_date),
  COUNT(*) AS total_admissions
FROM admissions a
  JOIN doctors d ON d.doctor_id = a.attending_doctor_id
GROUP BY
  1,
  4;
