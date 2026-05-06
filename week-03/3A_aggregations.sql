-- 1. Write a query to find the price of the cheapest item that Northwind sells. Then write a
-- second query to find the name of the product that has that price.
select min(unitprice)
from products;

select productname
from products
where UnitPrice = 2.5;
-- 2. Write a query to find the average price of all items that Northwind sells.
-- (Bonus: Once you have written a working query, try asking Claude or ChatGPT for help
-- using the ROUND function to round the average price to the nearest cent.)
select round(avg(unitprice),2) -- wow
from products



-- 3. Write a query to find the price of the most expensive item that Northwind sells. Then
-- write a second query to find the name of the product with that price, plus the name of
-- the supplier for that product.
; 
select max(unitprice)
from products

;select productname as product, unitprice, s.CompanyName
from products
join suppliers as s on s.SupplierID = products.SupplierID
where unitprice  = 263.5;



-- 4. Write a query to find total monthly payroll (the sum of all the employees’ monthly
-- salaries).
select round(sum(salary),2) -- strange
from employees
;


-- 5. Write a query to identify the highest salary and the lowest salary amounts which any
-- employee makes. (Just the amounts, not the specific employees!)
select round(min(salary),2) as newbie, round(max(salary),2) as "whoever has the most responsibility"
from employees
;


-- 6. Write a query to find the name and supplier ID of each supplier and the number of
-- items they supply. Hint: Join is your friend here.
select count(productname) , s.companyname, s.SupplierID 
from products as p
join suppliers as s on s.supplierid = p.supplierid
group by companyname, supplierid

;

-- 7. Write a query to find the list of all category names and the average price for items in
-- each category.
select round(avg(p.unitprice),2), c.Categoryname -- looks good to me 
from  products as p
join categories as c on c.CategoryID = p.CategoryID
group by CategoryName


;
-- 8. Write a query to find, for all suppliers that provide at least 5 items to Northwind, what
-- is the name of each supplier and the number of items they supply.
select count(p.productid), s.companyname
from products as p
join suppliers as s on s.supplierid = p.supplierid
group by s.companyname
having count(p.ProductID) >= 5;


;



-- 9. Write a query to list products currently in inventory by the product id, product name,
-- and inventory value (calculated by multiplying unit price by the number of units on
-- hand). Sort the results in descending order by value. If two or more have the same
-- value, order by product name. If a product is not in stock, leave it off the list.
select productid, productname, unitprice*unitsinstock as `inventory value` -- used "" instead of backticks the first time
from products
where UnitsInStock > 0
order by  `inventory value` desc, productname asc


-- 10. Save your changes to 3A_aggregations.sql and use Git Bash to add, commit, and push
-- to DataAnalytics/week-03.
