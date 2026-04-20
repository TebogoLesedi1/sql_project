




------WHERE CLAUSE-----
--- where clause you use it when you want to find specific entries on a particular entry

SELECT * --using a comparisim operator = ( equals to)
FROM [Parks_and_Recreation].[dbo].[employee_salary]
WHERE first_name = 'Leslie';


SELECT * --using a comparism operator > (greater than)
FROM [Parks_and_Recreation].[dbo].[employee_salary]
WHERE salary > 50000;

SELECT * --using a comparism operator >= (greater or equals to)
FROM [Parks_and_Recreation].[dbo].[employee_salary]
WHERE salary >= 50000;

SELECT * --using a comparism operator < (less than)
FROM [Parks_and_Recreation].[dbo].[employee_salary]
WHERE salary < 50000;

SELECT * --using a comparism operator != (not eqaul to)
FROM [Parks_and_Recreation].[dbo].[employee_demographics]
WHERE gender != 'female';

SELECT * --using a comparism operator (>) on a date 
FROM [Parks_and_Recreation].[dbo].[employee_demographics]
WHERE birth_date > '1985-01-01';

---using logical operators--- AND OR NOT---

SELECT * --using a comparism operator (>) and the logical operator AND
FROM [Parks_and_Recreation].[dbo].[employee_demographics]
WHERE birth_date > '1985-01-01'
AND gender = 'male';

SELECT * --using a comparism operator (>) and the logical operator OR
FROM [Parks_and_Recreation].[dbo].[employee_demographics]
WHERE birth_date > '1985-01-01'
OR gender = 'male';

SELECT * --using a comparism operator (>) and the logical operator NOT
FROM [Parks_and_Recreation].[dbo].[employee_demographics]
WHERE birth_date > '1985-01-01'
OR NOT gender = 'male';

SELECT * --using a comparism operator (>) and the logical operators AND & OR
FROM [Parks_and_Recreation].[dbo].[employee_demographics]
WHERE (first_name = 'Leslie' AND age = 44) OR age >55;

---LIKE STATTEMET------
---speical chacters to help us execute the like statement is --% and _

SELECT * -- the like 'a%' means an a must start the name
FROM [Parks_and_Recreation].[dbo].[employee_demographics]
WHERE first_name LIKE 'a%';

SELECT * -- the like 'a%' means an a must end the name
FROM [Parks_and_Recreation].[dbo].[employee_demographics]
WHERE first_name LIKE '%a';

SELECT * -- the like 'a%' means an a must a letter in between the name
FROM [Parks_and_Recreation].[dbo].[employee_demographics]
WHERE first_name LIKE '%a%';

SELECT * -- the like 'a__' means a a must start the name and there is 2 more chacters no more, no less
FROM [Parks_and_Recreation].[dbo].[employee_demographics]
WHERE first_name LIKE 'a__';

 SELECT * -- the like 'a__' means a a must start the name, 3 more chacters and can end with antthing after that
FROM [Parks_and_Recreation].[dbo].[employee_demographics]
WHERE first_name LIKE 'a___%';

SELECT * -- lets use a bith date on a like statement
FROM [Parks_and_Recreation].[dbo].[employee_demographics]
WHERE birth_date LIKE '1985%';




