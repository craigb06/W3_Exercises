#question #1
SELECT ProductName 
FROM northwind.products
WHERE UnitPrice IN
	(SELECT MAX(UnitPrice)
    FROM northwind.products);

#question #2
SELECT ProductName, CategoryName 
FROM northwind.products
JOIN northwind.categories
USING (CategoryID) 
WHERE UnitPrice IN 
	(SELECT MAX(UnitPrice)
    FROM northwind.products);

#question #3
SELECT OrderID, ShipName, ShipAddress
FROM northwind.orders
WHERE
	(SELECT ShipperID
    FROM northwind.shippers
    WHERE CompanyName = 'Federal Shipping');

#question #4
SELECT OrderID 
FROM northwind.`order details`
WHERE 
	(SELECT ProductID
    FROM northwind.products
    WHERE ProductName = 'Sasquatch Ale');

#question #5
SELECT FirstName, LastName
FROM northwind.employees
WHERE EmployeeID IN
	(SELECT EmployeeID
    FROM northwind.orders
    WHERE OrderID = 10266);

SELECT FirstName, LastName
FROM northwind.employees
JOIN northwind.orders
USING (EmployeeID)
WHERE OrderID = 10266;

#question #6
SELECT ContactName, CompanyName
FROM northwind.customers
WHERE CustomerID IN
	(SELECT CustomerID
    FROM northwind.orders
    WHERE OrderID = 10266);
    
SELECT ContactName, CompanyName
FROM northwind.customers
JOIN northwind.orders
USING (CustomerID)
WHERE OrderID = 10266;
