/* Show first_name, last_name, and the total number of admissions attended for each doctor.

Every admission has been attended by a doctor */

SELECT
  d.first_name,
  d.last_name,
  COUNT(a.admission_date) AS admissions_for_each_doctor
FROM admissions a
  JOIN doctors d ON d.doctor_id = a.attending_doctor_id
GROUP BY
  d.first_name,
  d.last_name;
