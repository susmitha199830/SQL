-- UNIONS

SELECT *
FROM employee_demographics;

SELECT age, gender
FROM employee_demographics
UNION
SELECT first_name, last_name
FROM employee_salary
;

SELECT first_name, last_name
FROM employee_demographics
UNION  distinct
SELECT first_name, last_name
FROM employee_salary
;

SELECT first_name, last_name
FROM employee_demographics
UNION ALL
SELECT first_name, last_name
FROM employee_salary
;

SELECT first_name, last_name, 'old man' as label
FROM employee_demographics
WHERE age > 40 AND gender = 'male'
UNION 
SELECT first_name, last_name, 'old lady' as label
FROM employee_demographics
WHERE age > 40 AND gender = 'female'
UNION
SELECT first_name, last_name, 'Highly paid eployee' as label
FROM employee_salary
WHERE salary > 70000
ORDER BY first_name, last_name
;
