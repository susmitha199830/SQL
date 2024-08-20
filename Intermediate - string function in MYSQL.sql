-- String Functions

SELECT LENGTH('skyfall');

SELECT first_name, LENGTH(first_name)
FROM employee_demographics
order by 2;


SELECT UPPER ('sky');
SELECT LOWER ('SKY');

SELECT first_name, UPPER(first_name)
FROM employee_demographics;

SELECT first_name, LOWER(first_name)
FROM employee_demographics;

SELECT first_name, RTRIM('                SKY                 ')
FROM employee_demographics;

SELECT first_name, LTRIM('                SKY                 ')
FROM employee_demographics;

SELECT first_name, left(first_name,4)
FROM employee_demographics;

SELECT first_name, RIGHT(first_name,4)
FROM employee_demographics;

SELECT first_name, 
left(first_name, 4),
right(first_name, 4),
substring(first_name,3,2),
birth_date, 
substring(birth_date,6,2) AS birth_month
FROM employee_demographics;

SELECT first_name, REPLACE(first_name, 'a','z')
from employee_demographics;

SELECT LOCATE('X','Alexander');

SELECT first_name, LOCATE('AN',first_name)
from employee_demographics;

SELECT first_name, last_name,
CONCAT(first_name, ' ',last_name) AS full_name
from employee_demographics;



