-- case statements

SELECT first_name,
last_name,
age,
CASE 
 WHEN age <= 30 THEN 'YOUNG'
 WHEN age BETWEEN 31 AND 50 THEN 'OLD'
 WHEN age >=50 THEN "OLD DEATH'S DOOR"
 END AS Age_Brakets
FROM employee_demographics;

-- Pay Increase and Bonus
-- < 50000 = 5%
-- > 50000 = 7%
-- Finance = 10% bonus


SELECT first_name, last_name,
CASE
  WHEN salary < 50000 THEN salary + (salary * 0.05)
 END AS New_Salary
FROM employee_salary;

SELECT first_name, last_name,
CASE
  WHEN salary < 50000 THEN salary * 1.05
  WHEN salary > 50000 THEN salary * 1.07
 END AS New_Salary,
CASE 
  WHEN dept_id = 6 then salary * .10 
END 
FROM employee_salary;

SELECT *
FROM employee_salary;
SELECT *
FROM parks_departments;

