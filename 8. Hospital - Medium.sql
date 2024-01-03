/* Show patient_id, diagnosis from admissions. Find patients admitted multiple times for the same diagnosis  */

SELECT
  patient_id,
  diagnosis
FROM admissions
GROUP BY
  1,
  2
HAVING COUNT(diagnosis) > 1;
