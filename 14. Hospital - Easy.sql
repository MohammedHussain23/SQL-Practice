/* Based on the cities that our patients live in, show unique cities that are in province_id 'NS' */

select
 DISTINCT city FROM patients WHERE province_id = 'NS';
