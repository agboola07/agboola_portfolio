create database north_wind;

use north_wind;

-- Select all data from the categories table. 
SELECT * FROM categories_north;

-- Create a report that shows the category name and description from the categories table, sorted by category name. 
SELECT categoryName,description
FROM categories_north
ORDER BY CategoryName;

-- Create a report that shows the contact name, company name, contact title, and phone number from the customers table, sorted by phone. 
SELECT ContactName,CompanyName,ContactTitle,Phone
FROM customer_north
ORDER BY phone;

-- Create a report that shows the capitalized first name and last name renamed as firstname and lastname, respectively, and hiredate from the employees table, sorted from newest to oldest employees. 
SELECT UPPER(CONCAT(FirstNAME,' ',LastName)) as FULL_NAME, HireDate
FROM employees_north
ORDER BY  HireDate desc;

-- Create a report that shows the top 10 orderid, orderdate, shippeddate, customerid, and freight from the orders table, sorted by freight in descending order.
SELECT orderid,orderdate,shippeddate,customerid,freight
FROM orders_north 
ORDER BY Freight desc
limit 10;

-- Create a report that shows all the customer IDs in lowercase and renamed as "ID" from the customers table. 
SELECT LOWER(customerid) as "ID"
FROM customer_north;

-- Create a report that shows the company name, fax, phone, country, and homepage from the suppliers table, sorted by the country in descending order, then by company name in ascending order. 
SELECT CompanyName,Fax,Phone,Country,HomePage
FROM suppliers_north
ORDER BY Country desc;

SELECT CompanyName,Fax,Phone,Country,HomePage
FROM suppliers_north
ORDER BY  CompanyName asc;

-- Create a report that shows the company name and contact name of all CompanyName  from "Cactus." 
SELECT companyname,contactname
FROM customer_north
WHERE CompanyName like '%Cactus%';

-- Create a report showing product name, unit price, quantity per unit, and units in stock for products that are out of stock. 
SELECT ProductName,UnitPrice,QuantityPerUnit,UnitsInStock
FROM products_north
where UnitsInStock = 0;

-- Create a report showing the contact name, address, and city of all customers not from Germany, Mexico, or Spain. 
SELECT ContactName, Address, City
FROM customer_north
where city not in  ('mexico','germany','mexico');

-- Create a report showing order date, shipped date, customer ID, and freight of all orders placed . ( between 1940 and 1960)
SELECT OrderDate,ShippedDate,CustomerId,Freight 
FROM orders_north
where OrderDate between '1940/01/01' and '1960/01/01';

-- Create a report showing the first name, last name, and country of employees not from the United States. 
SELECT FirstName,LastName,Country
FROM employees_north
WHERE country not in ('usa');

-- Create a report that shows the employee ID, order ID, customer ID, required date, and shipped date from all orders shipped later than required. 
SELECT EmployeeID,OrderID,CustomerID,RequiredDate,ShippedDate
FROM orders_north
ORDER BY ShippedDate desc;

-- Create a report that shows the city, company name, and contact name of customers from cities starting with the letter "A" or "B." 
SELECT CompanyName,City,ContactName
FROM customer_north
WHERE City like 'A%';

SELECT CompanyName, City, ContactName
FROM customer_north
WHERE City LIKE 'B%';

-- Create a report showing all the even numbers of order IDs from the orders table. 
SELECT OrderID
FROM orders_north
WHERE OrderID  %2=0;

-- Create a report showing all the odd numbers of order IDs from the orders table. 
SELECT OrderID
FROM orders_north
WHERE OrderID  %2=1;
 
-- Create a report that shows all the orders where the freight cost is more than 500 dollars. 
SELECT OrderID, Freight
FROM orders_north
WHERE Freight >500;

-- Create a report that shows the product name, units in stock, units on order, and reorder level of all products that are up for reorder. 
SELECT ProductName,UnitsInStock,UnitsOnOrder,ReorderLevel
FROM products_north
WHERE ReorderLevel > 1;

-- Create a report that shows the company name and contact name of all customers that do not have a fax number. 
SELECT CompanyName, ContactName, Fax
FROM customer_north
WHERE Fax is Null;

-- Create a report that shows the first name and last name of all employees that do not report to anybody. 
SELECT concat(firstname,' ',lastname) as Full_Name, ReportsTo
FROM employees_north
WHERE ReportsTo is null;

-- Create a report showing all the odd numbers of order IDs from the orders table. 
SELECT orderid 
FROM orders_north
WHERE OrderID  %2=1;

-- Create a report that shows the company name, contact name, and fax of all customers that do not have a fax number, sorted by contact name. 
SELECT CompanyName, ContactName, Fax
FROM customer_north
WHERE Fax is Null;

-- Create a report that shows the city, company name, and contact name of customers from cities that have the letter "L" in the name, sorted by contact name. 
SELECT City,CompanyName,ContactName
FROM customer_north
WHERE city like'%L%'
ORDER BY ContactName;

-- Create a report that shows the first name, last name, and birthdate of employees born in 1950. 
SELECT concat(firstname,' ',lastname) as Full_Name,BirthDate
FROM employees_north
where BirthDate = 1950;

-- Create a report that shows the first name, last name, and the year of birthdate as "birthyear" from the employees table. 
SELECT concat(firstname,' ',lastname) as Full_Name,year(BirthDate) as BirthYear
FROM employees_north; 

-- Create a report showing order ID and the total number of order IDs as "number of orders" from the order details table, grouped by order ID and sorted by the number of orders in descending order.
SELECT count(OrderID)as 'Number of Orders', OrderID
FROM orders_north 
GROUP BY OrderID
ORDER BY 'Number of Orders' desc;

-- Create a report that shows the supplier ID, product name, and company name of products supplied by Exotic Liquids, Specialty Biscuits Ltd., and Escargots Nouveaux, sorted by supplier ID. 
SELECT s.SupplierID,p.ProductName,s.companyname
from suppliers_north s
join products_north p on s.SupplierID = p.SupplierID
where CompanyName in ('Exotic Liquids','Specialty Biscuits Ltd.','Escargots Nouveaux')
order by SupplierID;

 --  Create a report that shows the ship postal code, order ID, order date, required date, and shipped date of all orders with a ship postal code beginning with "98124." 
SELECT ShipPostalCode, OrderID, OrderDate, RequiredDate, ShippedDate
FROM orders_north
WHERE ShipPostalCode LIKE '98124%';

-- Create a report that shows the contact name, contact title, and company name of customers that do not have "sales" in their contact title.
 SELECT ContactName,ContactTitle,CompanyName
 FROM customer_north
 WHERE ContactTitle not like '%sales%';
 
-- Create a report that shows the last name, first name, and city of all employees in cities other than Seattle. 
SELECT FirstName,LastName,City
FROM employees_north
WHERE city not like '%seattle%';

-- Create a report that shows the company name, contact title, city, and country of all customers in any city in Mexico or other cities in Spain other than Madrid.
SELECT CompanyName,ContactTitle,City,Country
FROM customer_north 
WHERE City in ('mexico') or ('spain') not in ('madrid');

-- Create a report that shows the contact name of all customers that do not have the letter "A" as the second letter in their contact name. 
SELECT ContactName
FROM customer_north
WHERE ContactName not like '%_a%';

-- Create a report that shows the average unit price rounded to the nearest whole number, total price of units in stock, and the maximum number of orders from the product table. Save them as average price, total stock, and max order, respectively
select round(avg(UnitPrice)) averageprice,
round(sum(UnitPrice*UnitsInStock)) total_stock,
max(UnitsOnOrder) max_order
from products_north;

-- Create a report that shows the supplier ID, company name, category name, product name, and unit price from the products, suppliers, and categories table.	
SELECT p.SupplierID,CategoryName,UnitPrice
from  products_north p
join suppliers_north s on p.SupplierID = s.SupplierID
join categories_north c on p.CategoryID = c.CategoryID;

-- Create a report that shows the customer ID and sum of freight from the orders table with a sum of freight greater than 200 dollars, grouped by customer ID. 
select sum(freight) total_freight, CustomerID
from orders_north
group by CustomerID
having sum(freight) > 200;

-- Create a report that shows the order ID, contact name, unit price, quantity, and discount from the order details, orders, and customer table, with discounts given on every purchase. 
SELECT o.OrderID,UnitPrice,Quantity,Discount 
FROM orders_north o
join orderdetails_north od on o.OrderID = od.OrderID
join customer_north c on o.CustomerID = c.CustomerID;

-- Create a report that shows the employee ID, last name, first name as "employee," and the last name and first name of the person they report to as "manager" from the employees table, sorted by employee. 
select employeeid,concat(lastname,' ',firstname) employee, ReportsTo
from employees_north;

-- Create a report that shows the average, minimum, and maximum unit price of all products as average price, minimum price, and maximum price, respectively. 
SELECT round(avg(UnitPrice)) AveragePrice,round(max(UnitPrice)) MaximumPrice,round(min(UnitPrice)) MinimumPrice
From products_nortproducts_northshippers_northh;

-- Create a view named "customerinfo" that shows the customer ID, company name, contact name, contact title, address, city, country, phone, order date, required date, and shipped date from the customers and orders table. 
create view customerinfo
 as select c.customerID, c.companyname, c.contactname, c.contacttitle, c.address, c.city, c.country, c.phone, o.orderdate, o.requireddate, o.shippeddate 
from customer_north c
join orders_north o on c.CustomerID = o.CustomerID;

-- Change the name of the view from "customerinfo" to "customerdetails."
rename table
customerinfo to customerdetail;