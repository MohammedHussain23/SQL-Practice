/* Show first name, last name, and the full province name of each patient. Example: 'Ontario' instead of 'ON' */

SELECT
  p.first_name,
  p.last_name,
  pr.province_name
FROM patients p
  JOIN province_names pr ON p.province_id = pr.province_id;