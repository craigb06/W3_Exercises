#question #1
SELECT ProductName FROM northwind.products
WHERE UnitPrice IN (SELECT MAX(UnitPrice)
FROM northwind.products);

#question #2
SELECT ProductName, CategoryName 
FROM northwind.products
JOIN northwind.categories
USING (CategoryID) 
WHERE UnitPrice IN (SELECT MAX(UnitPrice)
FROM northwind.products);
