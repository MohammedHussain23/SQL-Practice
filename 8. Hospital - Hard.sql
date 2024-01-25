/* Show the percent of patients that have 'M' as their gender. Round the answer to the nearest hundreth number and in percent form. */

SELECT
  CONCAT(
    round(SUM(gender = 'M') * 100.0 / COUNT(*), 2),
    '%'
  ) AS percent_of_male_patients
FROM patients;
