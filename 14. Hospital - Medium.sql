/* Show the province_id(s), sum of heigh, where the total sum of
 its patient's height is greater than or equal to 7,000 */

SELECT
  province_id,
  SUM(height) AS sum_of_height
FROM patients
GROUP BY 1
HAVING SUM(height) >= 7000;
