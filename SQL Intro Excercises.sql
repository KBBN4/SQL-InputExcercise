


-- find all products
 select *
 from products;
-- find all products that cost $1400
select *
 from products 
 Where price  = 1400;
-- find all products that cost $11.99 or $13.99
SELECT 
    *
FROM
    products
WHERE
    price = 11.99 OR price = 13.99;
-- find all products that do NOT cost 11.99 - using NOT
select * 
from products 
where price != 11.99;
-- find all products and sort them by price from greatest to least

select * 
from products 
order by price desc;

-- find all employees who don't have a middle initial
select * 
from employees
where middleinitial is null;

-- find distinct product prices

select distict price
from products;

-- find all employees whose first name starts with the letter ‘j’

-- find all Macbooks

-- find all products that are on sale

-- find the average price of all products

-- find all Geek Squad employees who don't have a middle initial

-- find all products from the products table whose stock level is in the range -- of 500 to 1200. Order by Price from least to greatest. Hint: Use the between keyword