----------Stored Procedures-------------------------
--A stored procedure is a saved SQL program inside the database that you can run anytime with one command-
CREATE PROCEDURE large_salaries3
AS
BEGIN
    SET NOCOUNT ON;

    SELECT *
    FROM [Parks_and_Recreation].[dbo].[employee_salary]
    WHERE salary >= 50000;
END;

EXEC large_salaries3;


CREATE PROCEDURE large_salaries5
AS
BEGIN
    SET NOCOUNT ON;

    SELECT *
    FROM [Parks_and_Recreation].[dbo].[employee_salary]
    WHERE salary >= 50000;
    SELECT *
    FROM [Parks_and_Recreation].[dbo].[employee_salary]
    WHERE salary >= 10000;
END;

EXEC large_salaries5;

--PARAMETERS IN stored procedure
--Parameters in a stored procedure are like inputs you pass into your SQL “recipe” 
--so it can change what it does each time you run it

CREATE PROCEDURE large_salaries2
    @employee_id INT
AS
BEGIN
    SELECT *
    FROM [Parks_and_Recreation].[dbo].[employee_salary]
    WHERE employee_id = @employee_id;
END;

EXEC large_salaries2 @employee_id = 1;