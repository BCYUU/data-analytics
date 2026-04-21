use northwind;

-- 1. Write a query to list the product id, product name, and unit price of every product that
-- Northwind sells. (Hint: To help set up your query, look at the schema preview to see
-- what column names belong to each table. Or use SELECT * to query all columns
-- first, then refine your query to just the columns you want.)

select productID , productName, UnitPrice 
from products; 


-- 2. Write a query to identify the products where the unit price is $7.50 or less.
select productID , productName, UnitPrice 
from products
where UnitPrice < 7.51 ;

-- 3. What are the products that we carry where we have no units on hand, but 1 or more
-- units are on backorder? Write a query that answers this question.
select productID , productName,  unitsonorder
from products
where unitsinstock = 0 and unitsonorder > 0; 
-- There's only one? sure

-- 4. Examine the products table. How does it identify the type (category) of each item
-- sold? Where can you find a list of all categories? Write a set of queries to answer these
-- questions, ending with a query that creates a list of all the seafood items we carry.

-- Im assuming categories is where the categories are
select categoryname, categoryid from categories;
-- looks good
-- Oh I see the category Id in the products table as well nice


select productID , productName, categoryid 
from products
where categoryid = 8;
-- want to see how to get a count of the types of seafood items
select count(*)
from products
where categoryid = 8;


-- 5. Examine the products table again. How do you know what supplier each product
-- comes from? Where can you find info on suppliers? Write a set of queries to find the
-- specific identifier for "Tokyo Traders" and then find all products from that supplier.
select productID , productName, products.supplierid, companyname
from products
left join suppliers 
on products.supplierid = suppliers.supplierid
where suppliers.supplierid = 4 ;  -- for some reason my attempts at searching using "%tokyo traders%" didnt work so I just used the id number

select * from suppliers;



-- 6. How many employees work at northwind? What employees have "manager"
-- somewhere in their job title? Write queries to answer each question.

select count(*)
from employees;
-- there's only nine employees at all!?
select count(*)
from employees
where title like "%Manager%";
-- there is one for a second I thought there was just none or maybe it was hidden in the notes section but I just needed to stop using an equal sign 
select * from employees
-- 7. Save your changes to 1B_query_practice.sql and use Git Bash to add, commit, and
-- push to DataAnalytics/week-03.