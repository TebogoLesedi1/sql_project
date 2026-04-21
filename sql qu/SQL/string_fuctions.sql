---------String Functions-------
--are build-in tools used to manipulate, format, or extract 
--specific parts of text data within a database




--LEN() counts the number of characters
SELECT first_name, LEN(first_name)
FROM [Parks_and_Recreation].[dbo].[employee_demographics];

--LEN() counts the number of characters
SELECT first_name, LEN(first_name)
FROM [Parks_and_Recreation].[dbo].[employee_demographics]
ORDER BY 2;

--UPPER it converts all characters in a text string to capital letters
SELECT UPPER(first_name)
FROM [Parks_and_Recreation].[dbo].[employee_demographics];

--LOWER it converts all characters in a text string to lower letters
SELECT LOWER(first_name)
FROM [Parks_and_Recreation].[dbo].[employee_demographics];

--CONCAT() joins 2 or more strings together
SELECT first_name, last_name,
CONCAT(first_name,' ', last_name) AS full_names
FROM [Parks_and_Recreation].[dbo].[employee_demographics];

--SUBSTRING() grabs a specific portion of a word
SELECT first_name,
LEFT(first_name, 4),
RIGHT(first_name, 4)
FROM [Parks_and_Recreation].[dbo].[employee_demographics];

SELECT first_name,
LEFT(first_name, 4),
RIGHT(first_name, 4),
SUBSTRING(first_name, 3,2)
FROM [Parks_and_Recreation].[dbo].[employee_demographics];

--REPLACE is a string tool that searches for a specific sequence
--of characters within a text and swaps them for a different one

SELECT first_name, REPLACE(first_name, 'a','z')
FROM [Parks_and_Recreation].[dbo].[employee_demographics];

--TRIM() removes unnecessary spaces from the beginning 
--or the end of a text query, we have right and left trim
SELECT TRIM(first_name)
FROM [Parks_and_Recreation].[dbo].[employee_demographics];

--CHARINDEX() returns an integar representing the position
--of the 1st occurrence of a substring within a string.
SELECT first_name, CHARINDEX('An',first_name)
FROM [Parks_and_Recreation].[dbo].[employee_demographics];





