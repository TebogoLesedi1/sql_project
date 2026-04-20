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