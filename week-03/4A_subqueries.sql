-- 1. What is the product name(s) of the most expensive products?
-- HINT: Find the max price in a subquery and then use that value to find products
-- whose price equals that value. (Some of your answers from Exercise 3.A may offer a
-- useful starting point.)

select productname, unitprice
from products
where Unitprice = (select max(UnitPrice) from products) -- so just the one thing?
;
-- 2. What is the product name(s) and categories of the least expensive products?
-- ∗ HINT: Find the min price in a subquery and then use that in your more complex
-- query that joins products with categories.
select productname, unitprice, c.CategoryName
from products as p 
join categories as c on c.CategoryID = p.CategoryID
where Unitprice = (select min(UnitPrice) from products)


-- 3. What is the order id, shipping name and shipping address of all orders shipped via
-- "Federal Shipping"?
-- ∗ HINT: Find the shipper id of "Federal Shipping" in a subquery and then use that
-- value to find the orders that used that shipper.
-- ∗ You do not need "Federal Shipping" to display in the results.
;
select orderid, shipname, shipaddress
from orders
where shipvia = (select shipperid 
	from shippers
	where companyname like '%Federal Shipping%'
	);




-- 4. What are the order ids of the orders that included "Sasquatch Ale"?
-- ∗ HINT: Find the product id of "Sasquatch Ale" in a subquery and then use that value
-- to find the matching orders from the `order details` table.
-- ∗ Your final results only need to display OrderID, but you may find it helpful to include
-- additional columns as you work on creating the query to better understand how the
-- query is working.

select distinct o.orderid -- does this not make more sense?
from orders as o
join `order details` as od on o.orderid = od.orderid
join products as p on od.ProductID = p.ProductID
where p.ProductName ='sasquatch ale';

select distinct o.orderid
from orders as o
join `order details` as od on od.orderID = o.orderID 
where  od.productid = (select productid 
from products
where productname = 'sasquatch ale');
 




-- 5. What is the name of the employee that sold order 10266?


select  e.FirstName, e.lastname
from orders as o
join employees as e on e.employeeid = o.employeeid
where orderid = 10266;


-- 6. What is the name of the customer that bought order 10266?
select  c.companyname
from orders as o
join customers as c on c.customerid = o.customerid
where orderid = 10266;

-- wondering if these last two were supposed to be done this way



-- 7. Save your changes to 4A_subqueries.sql and use Git Bash to add, commit, and push
-- to DataAnalytics/week-03.
-- Reminder: Bonus Labs
-- Great work on reaching the end of the workbook exercises! With any time you have
-- remaining this week, head back to Exercise 1.A and check out the bonus labs.