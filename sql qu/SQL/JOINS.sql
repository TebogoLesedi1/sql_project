----------------joins----------------





SELECT *
FROM [Parks_and_Recreation].[dbo].[employee_demographics];



SELECT *
FROM [Parks_and_Recreation].[dbo].[employee_salary];

----INNER JOIN-------
SELECT *
FROM [Parks_and_Recreation].[dbo].[employee_demographics] 
INNER JOIN [Parks_and_Recreation].[dbo].[employee_salary] 
ON  [Parks_and_Recreation].[dbo].[employee_demographics].employee_id = [Parks_and_Recreation].[dbo].[employee_salary].employee_id
;

-------use aliasing on the tables
SELECT *
FROM [Parks_and_Recreation].[dbo].[employee_demographics] AS dem
INNER JOIN [Parks_and_Recreation].[dbo].[employee_salary] AS sal
ON  dem.employee_id = sal.employee_id
;

----selecting coulms when working with inner joins
SELECT dem.employee_id, age , occupation
FROM [Parks_and_Recreation].[dbo].[employee_demographics] AS dem
INNER JOIN [Parks_and_Recreation].[dbo].[employee_salary] AS sal
ON  dem.employee_id = sal.employee_id
;


------------OUTTER JOINS------------------

--LEFT JOIN returns all records from the left table and the matched
--records from the right table,filling in with NULL where no match exists
SELECT *
FROM [Parks_and_Recreation].[dbo].[employee_demographics] AS dem
LEFT JOIN [Parks_and_Recreation].[dbo].[employee_salary] AS sal
ON  dem.employee_id = sal.employee_id
;

--RIGHT JOIN returns all records from the right table and the matched
--records from the left table,filling in with NULL where no match exists
SELECT *
FROM [Parks_and_Recreation].[dbo].[employee_demographics] AS dem
RIGHT JOIN [Parks_and_Recreation].[dbo].[employee_salary] AS sal
ON  dem.employee_id = sal.employee_id
;

--------------SELF JOIN--------------
--A SELF JOIN is a regular join where a table is joined with itself
--used to compare rows within the same table or to query
--hierarchical data 
SELECT *
FROM [Parks_and_Recreation].[dbo].[employee_salary] emp1
JOIN [Parks_and_Recreation].[dbo].[employee_salary] emp2
ON emp1.employee_id + 1 =  emp2.employee_id
;


SELECT emp1.employee_id AS emp_santa, 
emp1.first_name AS first_name_santa,
emp1.last_name AS last_name_santa,
emp2.employee_id AS emp_santa, 
emp2.first_name AS first_name_santa,
emp2.last_name AS last_name_santa
FROM [Parks_and_Recreation].[dbo].[employee_salary] emp1
JOIN [Parks_and_Recreation].[dbo].[employee_salary] emp2
ON emp1.employee_id + 1 =  emp2.employee_id
;

--JOINIG MULTIPLE TABLES TOGETHER

SELECT *
FROM [Parks_and_Recreation].[dbo].[employee_demographics] AS dem
INNER JOIN [Parks_and_Recreation].[dbo].[employee_salary] AS sal
ON  dem.employee_id = sal.employee_id
INNER JOIN [Parks_and_Recreation].[dbo].[parks_departments] AS pd
ON sal.dept_id = pd.department_id
;

SELECT *
FROM [Parks_and_Recreation].[dbo].[parks_departments]
;


