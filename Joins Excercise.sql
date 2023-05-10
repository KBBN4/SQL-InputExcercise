/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
SELECT 
    p.Name AS ProductName, c.Name AS Category
FROM
    products AS p
        INNER JOIN
    categories AS C ON C.CategoryID = p.CategoryID
WHERE
    c.name = 'Computers';

/* joins: find all product names, product prices, and products ratings that have a rating of 5 */

SELECT 
    products.name, products.Price, reviews.Rating AS reviews
FROM
    products
        INNER JOIN
    reviews ON reviews.ProductID = products.ProductID
WHERE
    reviews.Rating = 5;
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */

SELECT 
    e.FirstName, e.LastName, SUM(s.Quantity) AS total
FROM
    sales AS s
        INNER JOIN
    employees AS e ON e.EmployeeID = s.EmployeeID
GROUP BY e.EmployeeID;



/* joins: find the name of the department, and the name of the category for Appliances and Games */

SELECT 
    D.Name AS Department, c.name AS category
FROM
    departments AS D
        INNER JOIN
    categories AS C ON C.DepartmentID = D.DepartmentID
WHERE
    C.name = 'Appliances'
        OR C.name = 'Games';




/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */

SELECT 
    p.Name, SUM(s.Quantity), SUM(s.Quantity * s.PricePerUnit)
FROM
    products AS p
        INNER JOIN
    sales AS s ON s.ProductID = p.ProductID
WHERE
    p.ProductID = 97;


/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */

SELECT 
    P.Name AS productName,
    R.Reviewer AS Reviewer,
    R.Rating,
    R.comment
   
FROM
    products AS P
        INNER JOIN
    reviews AS R ON R.ProductID = P.ProductID
WHERE
    p.ProductID = 857
ORDER BY R.Rating DESC;


-- ------------------------------------------ Extra - May be difficult
/* Your goal is to write a query that serves as an employee sales report.
This query should return:
-  the employeeID - employee
-  the employee's first and last name - employee
-  the name of each product - product
-  and how many of that product they sold - sales */ 

SELECT 
    E.FirstName,
    E.LastName,
    P.Name,
    SUM(S.Quantity * S.PricePerUnit)
FROM
    employees AS E
        INNER JOIN
    sales AS S ON S.EmployeeID = E.EmployeeID
        INNER JOIN
    products AS P ON P.ProductID = S.ProductID;
    
    

