-- Joins

SELECT *
FROM employee_demographics;

SELECT *
FROM employee_salary;

SELECT *
FROM employee_demographics
INNER JOIN employee_salary
  ON employee_demographics.employee_id = employee_salary.employee_id
;

-- Outer Joins

SELECT *
FROM employee_demographics
LEFT JOIN employee_salary
  ON employee_demographics.employee_id = employee_salary.employee_id
;

SELECT *
FROM employee_demographics AS dem
RIGHT JOIN employee_salary AS sal
  ON dem.employee_id =sal.employee_id
;

-- SELF JOIN

SELECT emp1.employee_id AS emp_santa,
emp1.first_name AS first_name_santa,
emp1.last_name AS last_name_santa,
emp2.employee_id AS emp_name,
emp2.first_name AS first_name_emp,
emp2.last_name AS last_name_emp
FROM employee_salary emp1
join employee_salary emp2
  ON emp1.employee_id + 1 = emp2.employee_id
;

-- joininge multiple tables together

SELECT *
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
  ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments pd
  ON sal.dept_id = pd.department_id
 ;
 
 SELECT *
 FROM parks_departments;



