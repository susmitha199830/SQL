-- Subqueries

SELECT *
FROM employee_demographics
WHERE employee_id IN 
				   (SELECT employee_id 
					FROM employee_salary 
					WHERE dept_id = 1)
;


SELECT first_name, salary, avg(salary)
FROM employee_salary
group by first_name, salary;

SELECT first_name, salary, 
(SELECT avg(salary)
FROM employee_salary)
FROM employee_salary;

SELECT gender, AVG(age), max(age), min(age), count(age)
FROM employee_demographics
group by gender;

SELECT gender, AVG(`MAX(age)`)
FROM 
(SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender) AS agg_table
GROUP BY gender
;

SELECT AVG (MAX_age)
FROM 
(SELECT gender,
AVG(age) AS avg_age,
MAX(age) AS max_age, 
MIN(age) AS min_age, 
COUNT(age) 
FROM employee_demographics
GROUP BY gender) AS agg_table
;
