/* Show all allergies ordered by popularity. Remove NULL values from query  */

SELECT
  allergies,
  count(*) AS no_of_allergies
FROM patients
WHERE allergies IS NOT NULL
GROUP BY allergies
ORDER BY 2 desc;
