/*Write a select statement that returns the first name, last name, and salary of employees 
who work in department with department id 100 */
SELECT First_Name, Last_Name, Salary
FROM Employees
WHERE Department_ID = 100;

--Write a select statement that returns all the columns for the locations that are in London
SELECT *
FROM Locations
WHERE City LIKE 'London';

/*Write a select statement that returns the employee ID, first name, last name, and email 
for the employees whose email does not follow the company standard */
SELECT Employee_ID, First_Name, Last_Name, Email
FROM Employees
WHERE Email NOT LIKE SUBSTRING(First_Name, 1,1) + Last_Name;

--Write a SQL statement that returns the average salary of the employees who work as IT_PROG
SELECT AVG(Salary) AS 'Average Salary of IT_PROG'
FROM Employees
WHERE Job_ID LIKE 'IT_PROG';

/*Write a SQL statement that returns the number of employees in every department whose salary is more than 6000.
Do not return the department where the average salary is more than 9000 */
SELECT Department_ID, COUNT(Employee_ID) AS 'Sal'
FROM Employees
WHERE Salary > 6000
GROUP BY Department_ID
HAVING AVG(Salary) !>9000;


