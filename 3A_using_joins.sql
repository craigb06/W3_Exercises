#Question #1
SELECT productid, productname, unitprice, categoryname
FROM northwind.products INNER JOIN northwind.categories
ON products.CategoryID = categories.CategoryID
ORDER BY CategoryName, ProductName;

#Question #2
SELECT productid, productname, unitprice, CompanyName
FROM northwind.products INNER JOIN northwind.suppliers
ON products.SupplierID = suppliers.SupplierID
WHERE unitprice >=75
ORDER BY ProductName;

#Question #3
SELECT productid, productname, unitprice, categoryname, companyname
FROM northwind.products 
JOIN northwind.categories ON products.CategoryID = categories.CategoryID
JOIN northwind.suppliers ON products.SupplierID = suppliers.SupplierID
ORDER BY ProductName;

#Question #4
SELECT orderid, shipname, shipaddress, companyname
FROM northwind.orders JOIN northwind.shippers
ON orders.ShipVia = shippers.ShipperID
WHERE ShipCountry = 'Germany';

#Question 5
SELECT orderid, orderdate, shipname, shipaddress
FROM northwind.orders INNER JOIN northwind.`order details`
USING (OrderID)
WHERE ProductID =34;

SELECT orders.orderid, orderdate, shipname, shipaddress
FROM northwind.orders INNER JOIN northwind.`order details`
ON orders.OrderID = `order details`.OrderID
WHERE ProductID =34;