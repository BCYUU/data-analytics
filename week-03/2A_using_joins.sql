-- 1. Create a single query to list the product id, product name, unit price and category
-- name of all products. Order by category name and within that, by product name.

select productid as ID, productname as product, unitprice, categories.categoryname as type
from products
join categories on categories.CategoryID = products.CategoryID
order by CategoryName, ProductName;


-- 2. Create a single query to list the product id, product name, unit price and supplier
-- name of all products that cost more than $75. Order by product name.

select productid as ID, productname as product, unitprice, suppliers.CompanyName as supplier
from products
join suppliers on suppliers.SupplierID = products.SupplierID
where unitprice >75 
order by productname;


-- 3. Create a single query to list the product id, product name, unit price, category name,
-- and supplier name of every product. Order by product name.

select productid as ID, productname as product, unitprice as "unit price", categories.categoryname as category, suppliers.CompanyName as supplier
from products
left join categories on categories.CategoryID = products.CategoryID
left join suppliers on suppliers.SupplierID = products.SupplierID
order by productname;



-- 4. Create a single query to list the order id, ship name, ship address, and shipping
-- company name of every order that shipped to Germany. Assign the shipping company
-- name the alias ‘Shipper.’ Order by the name of the shipper, then the name of who it
-- shipped to.

select orderid, shipname, shipaddress, customers.CompanyName as customer, shippers.CompanyName as shippers
from orders
left join shippers on orders.shipvia = shippers.shipperId
left join customers on customers.customerid = orders.CustomerID
where shipcountry = 'Germany'
order by orders.ShipVia  
;
select * from shippers
;


-- 5. Start from the same query as above (#4), but omit OrderID and add logic to group by
-- ship name, with a count of how many orders were shipped for that ship name.

select shipname, shippers.CompanyName as shippers, count(*) as "Number of Orders"
from orders
left join shippers on orders.shipvia = shippers.shipperId
where shipcountry = 'Germany'
group by shipname, shippers.companyname
order by shippers.CompanyName, orders.shipname
;


-- 6. Create a single query to list the order id, order date, ship name, ship address of all
-- orders that included Sasquatch Ale.
-- ∗ Hint: You will need to join on three tables to accomplish this. (One of these tables
-- has a sneaky space in the name, so you will need to surround it with backticks, like
-- this: `table name`)
select orders.OrderID, orders.OrderDate, orders.shipname, orders.shipaddress -- spent an incredible amount of time not noticing I typed orders.ordersshipname somehow
from orders
join `order details` on orders.OrderID = `order details`.orderid  
join products on `order details`.ProductID = products.ProductID
where products.ProductName = 'Sasquatch Ale'
order by orders.orderid
;



-- 7. Save your changes to 2A_using_joins.sql and use Git Bash to add, commit, and push
-- to DataAnalytics/week-03.