
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

