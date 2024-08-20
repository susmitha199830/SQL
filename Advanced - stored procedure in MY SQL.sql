-- Stored Procedures

SELECT *
FROM employee_salary
WHERE salary >= 50000;

CREATE procedure large_salaries()
SELECT *
FROM employee_salary
WHERE salary >= 50000;

CALL large_salaries();

DELIMITER $$
CREATE procedure large_salaries4()
Begin
	SELECT *
	FROM employee_salary
	WHERE salary >= 50000;
	SELECT *
	FROM employee_salary
	WHERE salary >= 10000;
END $$
DELIMITER ;

CALL large_salaries4();


DELIMITER $$
CREATE procedure large_salaries6(huggymuffin INT)
Begin
	SELECT salary
	FROM employee_salary
	WHERE employee_id = huggymuffin
    ;
END $$
DELIMITER ;

CALL large_salaries6(2);
