
-- 1. List all employees working in department ID 3.
SELECT * FROM Employee WHERE departmentID=3;

-- 2. Show details of employees who joined after '2023-01-01'.
SELECT * FROM Employee WHERE JoinDate='2023-01-01';

-- 3. Find employees with salary greater than 60000.
SELECT * FROM Employee WHERE Salary>60000;

-- 4. Show employees who do not have any department assigned.
SELECT * FROM Employee WHERE DepartmentID IS NULL;

-- 5. Find employees who report to ManagerID 101.
SELECT * FROM Employee WHERE ManagerID=101;

-- 6. List all distinct department IDs from Employee table.
SELECT DISTINCT(departmentID) FROM employee;

-- 7. Show distinct salaries from the Employee table.
SELECT DISTINCT(Salary) FROM employee;

-- 8. List all unique ManagerIDs assigned to employees.
SELECT DISTINCT(ManagerID) FROM employee;

-- 9. Display all distinct locations from the Department table.
SELECT DISTINCT(location) FROM Department;

-- 10. Show distinct join dates from the Employee table.
SELECT DISTINCT(JoinDate) FROM Employee;

-- 11. Show employees who work in department 2 and earn more than 55000.
SELECT * FROM Employee where departmentID=2 and Salary>55000;

-- 12. List employees who joined in 2023 or earn less than 50000.
SELECT * FROM Employee where JoinDate LIKE "%3" or Salary<50000; 					-- ask to sir 

-- 13. Show employees who do not belong to department 1.
SELECT * FROM Employee where departmentID!=1;

-- 14. Find employees who joined after '2023-01-01' and have salary < 60000.
SELECT * FROM Employee where JoinDate  and Salary<60000; 							-- ask to sir 

-- 15. Show employees whose department is 3 or 4 and salary is greater than 60000.
SELECT * FROM Employee where DepartmentID=3 or 4 and Salary<60000;

-- 16. Display each employee’s salary increased by 10%.
SELECT salary*1.10 FROM Employee;

-- 17. Show salary after 2000 deduction for all employees.
SELECT salary-2000 FROM Employee;

-- 18. List employees with bonus = salary * 0.2.
SELECT salary+salary*0.2 FROM Employee;

-- 19. Find employees whose salary + 5000 is more than 60000.
SELECT salary+5000 FROM Employee WHERE Salary>60000;

-- 20. Show employee names and their yearly salary (monthly salary * 12).
SELECT name,salary*12 FROM Employee;

-- 21. Find the total salary paid to all employees.
SELECT sum(Salary) FROM Employee; 

-- 22. Count the number of employees in department 3.
SELECT count(EmployeeID) FROM Employee WHERE DepartmentID=3; 

-- 23. Find average salary of employees in department 1.
SELECT avg(salary) FROM Employee WHERE DepartmentID=1;

-- 24. Show minimum and maximum salary among all employees.
SELECT max(Salary),min(Salary) FROM Employee; 

-- 25. Find the number of employees without department (DepartmentID IS NULL).
SELECT count(EmployeeID) FROM Employee WHERE DepartmentID=NULL;

-- 26. List employees working in departments 1, 2, and 5.
SELECT DepartmentID,count(EmployeeID) FROM Employee GROUP BY DepartmentID;

-- 27. Show employees with EmployeeID IN (101, 105, 110).
SELECT * FROM employee WHERE employeeID IN (101,105,110);

-- 28. Show departments located in ('Delhi', 'Mumbai', 'Chennai').
SELECT DepartmentName FROM Department WHERE Location IN ('Delhi', 'Mumbai', 'Chennai');

-- 29. Find employees whose ManagerID is in (101, 102, 103).
SELECT EmployeeID FROM employee WHERE ManagerID IN (101,102,103);

-- 30. Display employees who joined in months with join date in ('2023-03-21', '2023-04-18').
SELECT EmployeeID FROM employee WHERE JoinDate BETWEEN  '2023-03-21' AND '2023-04-18';

-- 31. Show employees with salary between 50000 and 60000.
SELECT * FROM employee WHERE salary BETWEEN 50000 AND 60000;

-- 32. List employees who joined between '2023-01-01' and '2023-12-31'.
SELECT * FROM employee WHERE JoinDate BETWEEN '2023-01-01' AND '2023-12-31';

-- 33. Display departments with DepartmentID between 2 and 4.
SELECT DepartmentName,DepartmentID FROM Department WHERE DepartmentID BETWEEN 2 AND 4;				-- ask sir

-- 34. Show employees whose EmployeeID is between 110 and 120.
SELECT Name FROM employee WHERE EmployeeID BETWEEN 110 and 120;

-- 35. Find employees whose salary + 1000 lies between 60000 and 70000.
SELECT Name,(salary+1000) from employee where salary between 60000 and 70000;

-- 36. Find employees whose name starts with 'A'.
SELECT * FROM employee WHERE name LIKE "A%";

-- 37. Show employees whose name ends with 'a'.
SELECT * FROM employee WHERE name LIKE "%A";

-- 38. List employees whose name contains 'an'.
SELECT * FROM employee WHERE name LIKE "%an%";

-- 39. Find employees whose name has second character as 'h'.
SELECT * FROM employee WHERE name LIKE "_a%";

-- 40. Display employees whose name starts with any 4-letter word followed by 'a'.
SELECT * FROM employee WHERE name LIKE "____a%";

-- 41. Show all employees ordered by salary in ascending order.
SELECT * FROM employee ORDER BY SALARY ASC;

-- 42. List employees ordered by JoinDate descending.
SELECT * FROM employee ORDER BY JoinDate desc;

-- 43. Show departments ordered by DepartmentName alphabetically.
SELECT * FROM department ORDER BY departmentName ASC;

-- 44. Display employees ordered by department and salary.
SELECT * FROM Employee ORDER BY DepartmentID asc, salary ASC;

-- 45. List employees ordered by salary descending and then by name ascending.
SELECT * FROM Employee ORDER BY Salary DESC, Name ASC;

-- 46. Find employees from department 3 with salary > average salary of all employees.
SELECT * FROM Employee WHERE DepartmentID = 3 AND Salary > (SELECT AVG(Salary) FROM Employee);

-- 47. List names of employees with salary > 50000 and name contains 'a'
SELECT Name,salary FROM Employee WHERE name like"%a%" AND Salary > 50000;

-- 48. Show count of employees for each department using GROUP BY.
select DepartmentID,count(EmployeeID) from employee GROUP BY DepartmentID;

-- 49. Find top 5 highest paid employees using ORDER BY and LIMIT.
SELECT * FROM employee ORDER BY salary DESC limit 5;

-- 50. List employees who joined in 2023, belong to department 4 or 5, and earn less than 50000.
SELECT * FROM Employee WHERE YEAR(JoinDate) = 2023 AND DepartmentID IN (4, 5)AND Salary < 50000;
