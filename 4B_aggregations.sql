#question #1
SELECT MIN(UnitPrice) FROM northwind.products;

#question #2
SELECT AVG(UnitPrice) FROM northwind.products;

#question #3
SELECT MAX(UnitPrice) FROM northwind.products;

#question #4
SELECT SUM(Salary) FROM northwind.employees;

#question #5
SELECT MAX(Salary), FirstName, LastName
FROM northwind.employees
GROUP BY FirstName, LastName, Salary
ORDER BY Salary DESC;
#the employee with the max salary is Janet Leverling

SELECT MIN(Salary), FirstName, LastName
FROM northwind.employees
GROUP BY FirstName, LastName, Salary
ORDER BY Salary;
#the employee with the min salary is Steven Buchanan and another way to write this query would be
SELECT DISTINCT MIN(Salary), FirstName, LastName
FROM northwind.employees
GROUP BY FirstName, LastName, Salary;

#after collaborating with my peers they showed me a better, more efficient way to write this query
#SHOUTOUT TO ANTHONY
SELECT FirstName, LastName, Salary FROM northwind.employees
WHERE Salary =
	(SELECT MIN(Salary) FROM northwind.employees)
UNION
SELECT FirstName, LastName, Salary FROM northwind.employees
WHERE Salary = 
	(SELECT MAX(Salary) FROM northwind.employees);
    
#SHOUTOUT TO MARTIN
SELECT FirstName, LastName, Salary FROM northwind.employees
WHERE Salary =
	(SELECT MAX(Salary) FROM northwind.employees)
OR Salary =
	(SELECT MIN(Salary) FROM northwind.employees);

#question #6
SELECT COUNT(ProductName), SupplierID
FROM northwind.products
GROUP BY SupplierID;

#question #7
SELECT AVG(UnitPrice), CategoryID, CategoryName
FROM northwind.products JOIN northwind.categories
USING (CategoryID) GROUP BY CategoryID, CategoryName;

#After revisiting this question I believe I may have done it wrong so here is a new query that gives different result

#question #8
SELECT SupplierID, COUNT(ProductName) AS Supply5
FROM northwind.products GROUP BY SupplierID
HAVING Supply5 >= 5;

#question #9
SELECT ProductID, ProductName,(UnitPrice * UnitsInStock)
AS InventoryValue
FROM northwind.products
ORDER BY InventoryValue, ProductName;
