-- window functions

SELECT dem.first_name, dem.last_name, gender, AVG(salary) AS avg_salary
FROM employee_demographics dem
JOIN employee_salary sal
    ON dem.employee_id = sal.employee_id
GROUP BY dem.first_name, dem.last_name, gender;


SELECT gender, AVG(salary) OVER(PARTITION BY gender)
FROM employee_demographics dem
JOIN employee_salary sal
    ON dem.employee_id = sal.employee_id;
    
    
SELECT dem.first_name, dem.last_name, gender,salary,
SUM(salary) OVER(partition by gender ORDER BY dem.employee_id) as Rolling_Total
FROM employee_demographics dem
JOIN employee_salary sal
    ON dem.employee_id = sal.employee_id
;


SELECT dem.first_name, dem.last_name, gender,salary,
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary desc) AS row_num,
RANK() OVER(PARTITION BY gender ORDER BY salary desc) rank_num,
dense_RANK() OVER(PARTITION BY gender ORDER BY salary desc) dense_rank_num
FROM employee_demographics dem
JOIN employee_salary sal
    ON dem.employee_id = sal.employee_id
;
