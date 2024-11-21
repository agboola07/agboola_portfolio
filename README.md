
SQL stands for Structured Query Language and is a computer language that we use to interact with a relational database. SQL is a tool for organizing, managing, and retrieving archived data from a computer database. The original name was given by IBM as Structured English Query Language, abbreviated by the acronym SEQUEL. When data needs to be retrieved from a database, SQL is used to make the request. The DBMS processes the SQL query retrieves the requested data and returns it to us.
The grocery data store analysis describes the details of the customers, suppliers, employees and orders of the grocery store. It sheds light on the details of the employees that is the role and general information of each employee. It also describes the amount of order received in a day and their prices.it shows the name of their suppliers and what was supplied and when it was supplied. It also shows the details of the customers and how they patronize them.
The main purpose of this project is to practice and get familiar with MySQL so as to be able to use it anytime any day and this grocery data set touches almost all the types of SQL constraints and wildcards.
The database structure that was is the relational database management system. Different tables were created in the grocery store database which includes customers, categories, employees, orders, order details, products, shippers, suppliers with each having primary keys and foreign keys each.
The SQL queries used includes SELECT, FROM, WHERE, GROUPBY, ORDERBY, JOIN, ON, and so on.
SQL Joins is one of the concept of MySQL that was used in analyzing the grocery store data. Sql joins are used to combine rows from two or more tables based on a related column between them. This allows you to retrieve data from multiple tables in a single query, making it easier to analyze and manipulate data. There different types of join which are;
•	The INNER JOIN keyword selects records that have matching values in both tables. It returns only the rows where there is a match between the columns in both tables.
•	The LEFT JOIN returns all records from the left table and the matched records from the right table. If there is no match, the result is NULL on the side of the right table.
•	The RIGHT JOIN returns all records from the right table and the matched records from the left table. If there is no match, the result is NULL on the side of the left table.
•	The FULL JOIN returns all records when there is a match in either left or right table. If there is no match, the result is NULL on the side where there is no match.
The join concept was helpful in analyzing the grocery store data because the grocery store had multiple tables which cannot be analyzed except you use the join concept.
In analyzing the grocery store data, some of the challenges faced are using the join concept and where we have to use the group by concept but along the line when I read more and looked at different examples, I was able to solve the queries which I now know and can do anytime.
Some of the SQL queries that was written include;
•	SELECT FirstName,LastName,City
FROM employees_north
WHERE city not like '%seattle%';
This sql query shows a report that shows the name and city of employees that are not in seattle.
•	SELECT CompanyName, ContactName, Fax
FROM customer_north
WHERE Fax is Null;
This report shows the company name, contact name, and fax of all customers that do not have a fax number, sorted by contact name. 
•	SELECT concat(firstname,' ',lastname) as Full_Name, ReportsTo
FROM employees_north
WHERE ReportsTo is null;
This report shows the first name and last name of all employees in one column that do not report to anybody. 
•	SELECT p.SupplierID,CategoryName,UnitPrice
from  products_north p
join suppliers_north s on p.SupplierID = s.SupplierID
join categories_north c on p.CategoryID = c.CategoryID;
This report shows the supplier ID, company name, category name, product name, and unit price from the products, suppliers, and categories table. The join concept was used to join different columns from different tables.
Since starting my SQL journey, I've gained experience with database design, development, and querying. I've developed skills in writing efficient SQL queries using SELECT, JOIN, SUBQUERY, and AGGREGATE FUNCTIONS, database design and normalization, improved in query writing efficiency, developed problem solving skills using SQL. All this knowledge that I gained has really shaped me in analyzing the grocery store data.


