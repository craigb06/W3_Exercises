#question #1
SELECT productid, productname, unitprice from northwind.products;

#question #2
SELECT productname, unitprice from products where unitprice <= 7.50;
#answer Konbu, Guaran Fantstica, Geitost, Filo Mix, Tourtire

#question #3
select productname, unitsinstock, unitsonorder from products 
where unitsinstock =0 and unitsonorder >=1;
#answer Gorgonzola Telino

#question #4
SELECT * from categories;
#The products table identifies the type of item sold by first creating a categories table with a description of the item based on the categoryid
select * from products where CategoryID =8;

#Question #5
SELECT * from employees where title LIKE '%manager%';
#answer Steven Buchanan

#question 6
SELECT * from suppliers;
/*I know what supplier supplies each product by examining the suppliers table, which gives a company name and a supplierid as the primary key.
This primary key is then used as a foreign key in the products table to refer back to the suppliers table*/
select * from products where SupplierID =4;