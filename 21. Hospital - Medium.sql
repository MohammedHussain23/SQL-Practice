/* Display the total amount of patients for each province. Order by descending */

SELECT
  pr.province_name,
  COUNT(*) AS patients_count
FROM patients p
  JOIN province_names pr ON p.province_id = pr.province_id
GROUP BY 1
ORDER BY 2 DESC;
