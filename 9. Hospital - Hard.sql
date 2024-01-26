/* Show first name, last name, and gender of patients whose gender is 'M' */

SELECT
  admission_date,
  COUNT(*) AS admissions_today,
  COUNT(*) - LAG (COUNT(*), 1) OVER (
    ORDER BY
      admission_date
  ) AS admission_change
FROM admissions
GROUP BY 1;
