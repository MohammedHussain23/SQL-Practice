/* Show the provinces that has more patients identified as 'M' than 'F'. Must only show full province_name */

SELECT pr.province_name
FROM patients p
  JOIN province_names pr ON pr.province_id = p.province_id
GROUP BY p.province_id
HAVING
  SUM(p.gender = 'M') > SUM(p.gender = 'F');
