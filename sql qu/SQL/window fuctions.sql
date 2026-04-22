-------------------WINDOW FUCTIONS--------------------------


--they let you look at other rows around the current row to do calculations, without 
--squashing everything into one result like GROUP BY does.

----group by vs window fuction

SELECT gender, AVG(salary) AS avg_salary
FROM  [Parks_and_Recreation].[dbo].[employee_demographics] dem
JOIN [Parks_and_Recreation].[dbo].[employee_salary] sal
ON dem.employee_id = sal.employee_id 
GROUP BY gender;

--PARTITION BY is like splitting your data into separate groups, then doing the calculation 
--inside each group as if each one is its own little table

SELECT dem.first_name, dem.last_name, gender, AVG(salary) OVER(PARTITION BY gender)
FROM  [Parks_and_Recreation].[dbo].[employee_demographics] dem
JOIN [Parks_and_Recreation].[dbo].[employee_salary] sal
ON dem.employee_id = sal.employee_id 
;

--the question is, find rolling total of each salary
SELECT dem.first_name, dem.last_name, gender, salary,
SUM(salary) OVER(PARTITION BY gender ORDER BY dem.employee_id) AS 'ROLLING TOTAL OF SALARY'
FROM  [Parks_and_Recreation].[dbo].[employee_demographics] dem
JOIN [Parks_and_Recreation].[dbo].[employee_salary] sal
ON dem.employee_id = sal.employee_id 
;

--row number is like giving each row its own position in a line 
--It assigns a unique number (1, 2, 3, …) to each row based on the order you choose, 
--so you can clearly see who comes first, second, third, and so on.

SELECT dem.first_name, dem.last_name, gender, salary,
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary DESC) row_num,
RANK() OVER(PARTITION BY gender ORDER BY salary DESC) rank_num
FROM  [Parks_and_Recreation].[dbo].[employee_demographics] dem
JOIN [Parks_and_Recreation].[dbo].[employee_salary] sal
ON dem.employee_id = sal.employee_id 
;
--row number vs rank

--RANK() gives each row a position based on a value (like score or salary), but here’s the twist: if two rows are equal, 
--they share the same rank and then it skips the next number.
SELECT dem.first_name, dem.last_name, gender, salary,
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary DESC) row_num,
RANK() OVER(PARTITION BY gender ORDER BY salary DESC) rank_num
FROM  [Parks_and_Recreation].[dbo].[employee_demographics] dem
JOIN [Parks_and_Recreation].[dbo].[employee_salary] sal
ON dem.employee_id = sal.employee_id 
;

