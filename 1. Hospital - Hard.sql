/* Show all of the patients grouped into weight groups.
Show the total amount of patients in each weight group.
Order the list by the weight group decending.

For example, if they weight 100 to 109 they are placed in the 100 weight group, 110-119 = 110 weight group, etc. */

SELECT
  COUNT(*) AS number_of_patients,
  FLOOR(weight / 10) * 10.0 AS weight_group
FROM patients
GROUP BY 2
ORDER BY 2 DESC;
