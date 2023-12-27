/* Show unique birth years from patients and order them by ascending */

SELECT DISTINCT(YEAR(birth_date)) AS unique_birth_years
FROM patients
ORDER BY 1 ASC;
