/* Show the patient id and the total number of admissions for patient_id 579 */

SELECT patient_id, COUNT(1) AS number_of_admissions
FROM admissions
WHERE patient_id = 579;
