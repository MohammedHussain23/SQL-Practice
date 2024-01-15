/* display the first name, last name and number of duplicate patients based on their first name and last name.

Ex: A patient with an identical name can be considered a duplicate. */

SELECT
  first_name,
  last_name,
  COUNT(*) AS count_of_duplicates
FROM patients
GROUP BY
  1,
  2
HAVING COUNT(*) > 1;
