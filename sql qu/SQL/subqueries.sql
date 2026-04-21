-----SUBQUERIES-----


-----using subquering in the where clause
SELECT *
FROM [Parks_and_Recreation].[dbo].[employee_demographics]
WHERE employee_id IN 
				(SELECT employee_id
				FROM [Parks_and_Recreation].[dbo].[employee_salary]
				WHERE dept_id =1)
;

-----using subquering in the select clause
-- we want to see the employees salaries vs the average salary
-- to see who is getting paid above average
SELECT first_name, salary, 
( SELECT AVG(salary)
FROM [Parks_and_Recreation].[dbo].[employee_salary])
FROM [Parks_and_Recreation].[dbo].[employee_salary]; 


----using subquering in the from clause
SELECT gender, AVG(age) AS average_age, MAX(age) AS Maximum_age, MIN(age) AS Minimum_age, COUNT(age) AS Count_age
FROM [Parks_and_Recreation].[dbo].[employee_demographics]
GROUP BY gender;

SELECT AVG(Maximum_age)  AS 'AVG(Maximum_age)'
FROM
(SELECT gender,
AVG(age) AS average_age,
MAX(age) AS Maximum_age,
MIN(age) AS Minimum_age,
COUNT(age) AS Count_age
FROM [Parks_and_Recreation].[dbo].[employee_demographics]
GROUP BY gender) AS AGG_TABLE
;





