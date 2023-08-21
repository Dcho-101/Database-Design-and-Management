-- Question 1: Show the first five thousand employees in the employees table 

SELECT * FROM Employees
LIMIT 5000;

-- Question 2: Display all employee first names in alphabetical order 

SELECT EmployeeFirstName FROM Employees
ORDER BY EmployeeFirstName ASC;

-- Question 3: Show employees who have worked at the University the shortest amount of time 

-- first checking the last year of hiring in university by using "order by" function
select * FROM Employees 
order by yearHired desc;

-- We can see the last year hiring done on '2022', 
-- therefore by quering employees who have been hired on 2022, we can get the employees who have worked shortest amount of time
SELECT * FROM Employees 
where yearHired = '2022'; 

-- Question 4: Display the names of all employees whose age is a palindrome 

-- First Age of employee has been calculated by substracting birth year from current year 
-- Then palindrome condition has been checked using reverse of Age concept [if Age = 22, then reverse(Age) = 22 as well]
SELECT EmployeeFirstName, EmployeeLastName FROM Employees 
where REVERSE(YEAR(Curdate())-birthYear) = YEAR(Curdate())-birthYear; 

-- Question 5: Write a query to display all male and female employees who were not born in 1993 and who will not receive a performance bonus

SELECT * FROM Employees
WHERE Gender IN ('F', 'M') -- For Selecting Male and Female Gender only, F and M kept in list and checked where Gender is in that list
AND birthYear != '1993' -- for unselecting birth year "!=" has been used to check with 1993
AND PerformanceBonus = 'F'; -- PerformanceBonus column is having T and F, T = True, F= False. Who will not recieve performance bonus means 'F'

-- Question 6: Is there anything in this database that you would improve? If no, explain why. If yes, what would you change and why? (200 words) You must include this in your .sql file as a comment) 