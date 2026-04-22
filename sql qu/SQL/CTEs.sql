------------------------------CTEs------------------------------------------

--(Common Table Expressions) are like temporary “mini tables” you name and use inside a query
--They help you break a big, messy SQL query into cleaner, readable steps — like building your answer 
--in stages instead of doing everything in one long line.

--“What is the average of the average salaries across genders?”
WITH CTE_Example AS
(
SELECT gender, AVG(salary) AS average_salary, MAX(salary) AS Maximum_salary, MIN(salary) AS Minimum_salary, COUNT(salary) AS Count_salary
FROM [Parks_and_Recreation].[dbo].[employee_demographics] dem
JOIN [Parks_and_Recreation].[dbo].[employee_salary] sal
ON dem.employee_id = sal.employee_id
GROUP BY gender
)
SELECT AVG(average_salary)
FROM CTE_Example
;

-- This CTE creates a temporary table that groups employees by gender, calculates salary statistics for each group, 
--and renames the columns, then selects all the results from it. it overrides the aliases from the SELECT.
WITH CTE_Example( gender, average_sal, Maximum_salary, Minimum_salary, Count_salary) AS
(
SELECT gender, AVG(salary) AS average_salary, MAX(salary) AS Maximum_salary, MIN(salary) AS Minimum_salary, COUNT(salary) AS Count_salary
FROM [Parks_and_Recreation].[dbo].[employee_demographics] dem
JOIN [Parks_and_Recreation].[dbo].[employee_salary] sal
ON dem.employee_id = sal.employee_id
GROUP BY gender
)
SELECT *
FROM CTE_Example
;

--This query creates two filtered datasets (young employees and high earners) and
--joins them to return employees who meet both conditions.
WITH CTE_Example1 AS
(
SELECT employee_id,gender, birth_date
FROM [Parks_and_Recreation].[dbo].[employee_demographics]
WHERE birth_date > ' 1985-01-01'
),
CTE_Example2 AS
(
SELECT employee_id, salary
FROM [Parks_and_Recreation].[dbo].[employee_salary]
WHERE salary > 50000
)
SELECT *
FROM CTE_Example1
JOIN CTE_Example2
ON CTE_Example1.employee_id = CTE_Example2.employee_id
;
