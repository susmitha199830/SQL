-- Temporaray Tables

CREATE TEMPORARY TABLE temp_table
(first_name varchar(50),
last_name varchar(50),
favorite_movie varchar(100)
);

SELECT *
FROM temp_table;

INSERT INTO temp_table
VALUES('Alex','Ferberg','Lord of the rings: The Two Towers');

SELECT *
FROM temp_table;


SELECT *
FROM employee_salary;

CREATE TEMPORARY TABLE Salary_over_50k
SELECT *
FROM employee_salary
WHERE Salary >= 50000;

SELECT *
FROM Salary_over_50k;