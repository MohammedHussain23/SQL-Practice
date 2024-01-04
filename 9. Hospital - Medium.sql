/* Show the city and the total number of patients in the city.
Order from most to least patients and then by city name ascending  */

SELECT
  city,
  COUNT(*) AS number_of_patients
FROM patients
GROUP BY 1
ORDER BY
  2 DESC,
  1;
