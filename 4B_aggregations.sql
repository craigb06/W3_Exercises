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

#question #6
SELECT COUNT(ProductName), SupplierID
FROM northwind.products
GROUP BY SupplierID;

#question #7
SELECT AVG(UnitPrice), CategoryID
FROM northwind.products
GROUP BY CategoryID;

#question #8
SELECT COUNT(ProductName), SupplierID
FROM northwind.products
WHERE ReorderLevel >=5
GROUP BY SupplierID;

#question #9
SELECT ProductID, ProductName,(UnitPrice * UnitsInStock)
AS InventoryValue
FROM northwind.products
ORDER BY InventoryValue, ProductName;
