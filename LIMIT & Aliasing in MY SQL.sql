-- LIMIT & ALIASING

SELECT *
FROM employee_demographics
ORDER BY age DESC
limit 3, 1
;

-- Aliasing

SELECT gender, AVG(age) AS avg_age
FROM employee_demographics
GROUP BY gender
HAVING avg_age > 40
;



