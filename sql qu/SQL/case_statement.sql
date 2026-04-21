----------CASE STATEMENTS------------

SELECT first_name,
last_name,
age,
CASE
	WHEN age <=30 THEN 'YOUNG'
	WHEN age BETWEEN 31 AND 50 THEN 'OLD'
	WHEN age >=50 THEN 'SUPER OLD'
END AS 'AGE BRACKET'
FROM [Parks_and_Recreation].[dbo].[employee_demographics];

--pay increase and bonus
--< 50000 = 5%
--> 50000 = 7%
-- finance = 10% bonus


SELECT first_name,
last_name, salary,
CASE	
	WHEN salary < 50000 THEN salary*1.05
	WHEN salary > 50000 THEN salary*1.07
END AS 'new salary',
CASE	
	WHEN dept_id = 6 THEN salary*0.10
END AS BONUS
FROM [Parks_and_Recreation].[dbo].[employee_salary];






