-- WHERE Clause

SELECT *
FROM employee_salary
WHERE first_name = 'Leslie'
;


SELECT *
FROM employee_salary
WHERE salary >= 50000
;

SELECT *
FROM employee_demographics
WHERE gender != 'female'
;


SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
; 

-- AND OR NOT --Logical operators
SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
AND gender = 'male'
;

-- AND OR NOT --Logical operators
SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
OR gender = 'male'
;

-- AND OR NOT --Logical operators
SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
OR NOT gender = 'male'
;

-- AND OR NOT --Logical operators
SELECT *
FROM employee_demographics
WHERE (first_name = 'leslie' AND age = 44) OR age > 55
;


-- LIKE STATEMENT
SELECT *
FROM employee_demographics
WHERE first_name LIKE 'Jerry'
;


-- LIKE STATEMENT
SELECT *
FROM employee_demographics
WHERE first_name LIKE 'Jer%'
;

-- LIKE STATEMENT
SELECT *
FROM employee_demographics
WHERE first_name LIKE '%er%'
;

-- LIKE STATEMENT
SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a%'
;

-- LIKE STATEMENT
SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a___'
;

-- LIKE STATEMENT
SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a___%'