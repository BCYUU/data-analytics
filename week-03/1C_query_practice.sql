-- 1. Write a query to list the product id, product name, and unit price of every product. This
-- time, display them in ascending order by price.

select productID , productName, UnitPrice 
from products
order by unitprice asc ; -- missed the by and the column first go around

-- 2. What are the products that we carry where we have at least 100 units on hand? Order
-- them in descending order by price.

select productID , productName, UnitPrice, unitsinstock 
from products
where unitsinstock >= 100
order by unitprice desc ; -- this makes more sense accidentally used quantity PER unit at first and that was clearly wrong

-- 3. What are the products that we carry where we have at least 100 units on hand? Order
-- them in descending order by price. If two or more have the same price, list those in
-- ascending order by product name.

select productID , productName, UnitPrice, unitsinstock 
from products
where unitsinstock >= 100
order by unitprice desc, ProductName asc ; -- hope I'm not missing something since there isn't ant overlapping prices

-- 4. Write a query against the orders table that displays the total number of distinct
-- customers who have placed orders, based on customer ID. Use an alias to label the
-- count calculation as CustomerCount.

select  count(distinct customerid) as CustomerCount
from orders -- got 89
;

-- 5. Write a query against the orders table that displays the total number of distinct
-- customers who have placed orders, by customer ID, for each country where orders
-- have been shipped. Again, use an alias to label the count as CustomerCount. Order
-- the list by the CustomerCount, largest to smallest.

select  count(distinct customerid) as CustomerCount , shipcountry as Country
from orders
group by ShipCountry
order by customercount desc -- ran into issues since I needed to put the order by at the end 
;

-- 6. What are the products that we carry where we have less than 25 units on hand, but 1
-- or more units of them are on order? Write a query that orders them by quantity on
-- order (high to low), then by product name.

select productID , productName, UnitsOnOrder ,unitsinstock
from products
where unitsinstock < 25 and unitsonorder >= 1
order by UnitsOnOrder desc, ProductName asc ;


-- 7. Write a query to list each of the job titles in employees, along with a count of how
-- many employees hold each job title.

select title, count(employeeid) as employees
from employees 
group by title ;




-- 8. What employees have a monthly salary that is between $2000 and $2500? Write a
-- query that orders them by job title.

select  title, firstname as employee, salary
from employees
where salary between 2000 and 2500
-- where salary > 2000 and salary < 2500 -- buddy told me about between
order by title asc

-- 9. Save your changes to 1C_query_practice.sql and use Git Bash to add, commit, and
-- push to DataAnalytics/week-03.