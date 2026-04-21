-----------------UNIONS-------------------

--it combines the result set of two or more select
--statements into a single table by vertically stacking 
-- the rows from each query


SELECT first_name, last_name
FROM  [Parks_and_Recreation].[dbo].[employee_demographics]
UNION -- UNION DISTINCT, it shows unquie rows only
SELECT first_name, last_name
FROM  [Parks_and_Recreation].[dbo].[employee_salary]
;

SELECT first_name, last_name
FROM  [Parks_and_Recreation].[dbo].[employee_demographics]
UNION ALL -- it shows all the  rows including duplicates
SELECT first_name, last_name
FROM  [Parks_and_Recreation].[dbo].[employee_salary]
;

--query question, select employees who are old 
--and who get paid the highest based on gender

SELECT first_name, last_name, 'old Man' AS LABEL
FROM  [Parks_and_Recreation].[dbo].[employee_demographics]
WHERE age > 40 AND gender = 'MALE'
UNION 
SELECT first_name, last_name, 'old Lady' AS LABEL
FROM  [Parks_and_Recreation].[dbo].[employee_demographics]
WHERE age > 40 AND gender = 'female'
UNION 
SELECT first_name, last_name, 'Highest_Paid' AS LABEL
FROM  [Parks_and_Recreation].[dbo].[employee_salary]
WHERE salary > 70000
Order By first_name, last_name
;


