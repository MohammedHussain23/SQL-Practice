/* For each day display the total amount of admissions on that day. Display the amount changed from the previous date. */

SELECT
  admission_date,
  COUNT(*) AS admissions_today,
  COUNT(*) - LAG (COUNT(*), 1) OVER (
    ORDER BY
      admission_date
  ) AS admission_change
FROM admissions
GROUP BY 1;
