-- a) What is the name of the table that holds the items Northwind sells?
	-- Products is the name of the table.
-- b) What is the name of the table that holds the types/categories of the items
-- Northwind sells?
 -- I'm going to have to assume that the categories table has categories in it.
 select * from employees;
-- Peacock margaret has to be the bird lady
select * from products;
-- it returned 77, I just clicked the window that said "limit to" and set it to ten to limit it to ten.
-- for bonus you could do 
select * from employees limit 10;
select * from categories;
-- seafood has the id number of 8
select OrderID
, OrderDate 
, ShipName
, ShipCountry
from orders
limit 50;
-- 