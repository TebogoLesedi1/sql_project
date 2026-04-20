--------GROUP BY AND ORDER BY CLAUSE

SELECT *
FROM [Parks_and_Recreation].[dbo].[employee_demographics];


SELECT gender
FROM [Parks_and_Recreation].[dbo].[employee_demographics]
GROUP BY gender;

SELECT gender, AVG(age) AS 'AVG(age)',MAX(age) AS 'MAX(age)', MIN(age) as 'MIN(age)', COUNT(age) AS 'COUNT(age)'
FROM [Parks_and_Recreation].[dbo].[employee_demographics]
GROUP BY gender;

SELECT occupation,salary
FROM [Parks_and_Recreation].[dbo].[employee_salary]
GROUP BY occupation, salary;

-----ORDER BY CLAUSE----

SELECT *
FROM [Parks_and_Recreation].[dbo].[employee_demographics]
ORDER BY gender, age DESC;

SELECT * --- you can use the number
FROM [Parks_and_Recreation].[dbo].[employee_demographics]
ORDER BY 5, 4 DESC;

------------------HAVING VS WHERE-------------

SELECT gender,AVG(age)---group by allows us to group the coulmns 1st then the having allows us to get a gender that is its avg age is greaer than 40
FROM [Parks_and_Recreation].[dbo].[employee_demographics]
GROUP BY gender
HAVING AVG(age) > 40;


SELECT occupation, AVG(salary)
FROM [Parks_and_Recreation].[dbo].[employee_salary]
WHERE  occupation LIKE '%Manger%'
GROUP BY occupation
HAVING AVG(salary) > 75000;