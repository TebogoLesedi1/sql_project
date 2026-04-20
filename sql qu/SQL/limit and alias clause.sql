-- LIMIT and ALIASING







SELECT *
FROM [Parks_and_Recreation].[dbo].[employee_demographics]
ORDER BY age DESC
LIMIT 2, 1;

---ALIASING
SELECT gender, AVG(age) AS 'avg_age'
FROM [Parks_and_Recreation].[dbo].[employee_demographics]
GROUP BY gender
HAVING AVG(age) > 40;


