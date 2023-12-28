/* Show unique first names from the patients table which only occurs once in the list.

For example, if two or more people are named 'John' in the first_name column then don't 
include their name in the output list. If only 1 person is named 'Leo' then include them in the output.  */


SELECT DISTINCT first_name AS unique_fname
FROM patients
GROUP BY 1
HAVING COUNT(*) = 1;
