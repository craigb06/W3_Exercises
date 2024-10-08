#Question #1
SELECT ProductID, ProductName, UnitPrice 
FROM northwind.products
ORDER BY UnitPrice;

#Question #2 
SELECT * FROM northwind.products
WHERE UnitsInStock >=100
ORDER BY UnitPrice DESC;

#Question #3
SELECT * FROM northwind.products
WHERE UnitsInStock >=100
ORDER BY UnitPrice DESC, ProductName ASC;

#Question #4
SELECT COUNT(DISTINCT CustomerID)
FROM northwind.orders;

#Question #5
SELECT ShipCountry, COUNT(DISTINCT CustomerID)
FROM northwind.orders
GROUP BY ShipCountry;

#Question #6
SELECT * FROM northwind.products
WHERE UnitsInStock =0 AND UnitsOnOrder >=1
ORDER BY ProductName;

#Question #7
SELECT DISTINCT Title
FROM northwind.employees;

#Question #8
SELECT * FROM northwind.employees
WHERE salary 
BETWEEN 2000 AND 2500
ORDER BY Title;