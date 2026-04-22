---------------------TEMP TABLES-------------------------

--Temporary tables (temp tables) are like short-term storage tables you create to 
--hold data while you’re working on a query or process

--#TempTable → Local temp table Only visible in your session (your query window)
--##TempTable → Global temp table Visible to other sessions
--e.g 1
CREATE TABLE #TempTable (
first_name VARCHAR(50),
last_name VARCHAR(50)
);

INSERT INTO #TempTable
VALUES('ALEX', 'LESEDI');

SELECT *
FROM #TempTable;

--e.g 2

--CREATE TABLE #salary_over_50k();
SELECT *
INTO #salary_over_50k
FROM [Parks_and_Recreation].[dbo].[employee_salary]
WHERE salary >= 50000;


SELECT *
FROM #salary_over_50k;



