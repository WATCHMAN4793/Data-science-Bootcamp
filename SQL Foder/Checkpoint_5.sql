CREATE DATABASE Checkpoint_5
-- Making use of the created database
USE Checkpoint_5

-- Creating a customer table
CREATE TABLE Customer(
Customer_id INT PRIMARY KEY,
customer_Name VARCHAR(50) NOT NULL,
customer_Tel VARCHAR (50) NOT NULL CHECK (Customer_Tel LIKE '[0-9][0-9][0-9]-[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]'),
);

DROP TABLE Customer

SELECT * FROM Customer

-- Creating a product table
CREATE TABLE Product(
Product_id INT PRIMARY KEY,
Product_name VARCHAR(50) NOT NULL,
Product_price DECIMAL (30,2) CHECK (Product_price > 0) NOT NULL,
);
SELECT * FROM Product

-- Creating the Orders table
CREATE TABLE Orders(
Order_id INT PRIMARY KEY,
Customer_id INT FOREIGN KEY REFERENCES Customer (Customer_id) NOT NULL,
Product_id INT FOREIGN KEY REFERENCES Product (Product_id) NOT NULL,
Order_date DATE NOT NULL,
Quantity INT NOT NULL,
Total_amount INT NOT NULL
);

SELECT * FROM Orders

-- Inserting values into the customer table

INSERT INTO Customer(Customer_id, Customer_Name, Customer_Tel)
VALUES              (1, 'Alice', '234-489-2314'),
                    (2, 'Bob', '732-223-6789'),
					(3, 'Charlie', '402-783-1246');
SELECT * FROM Customer

-- Inserting values into the product table

INSERT INTO Product(Product_id, Product_name, Product_price)
VALUES             (1, 'Widget', 10),
                   (2, 'Gadget', 20),
				   (3, 'Doohickey', 15);

SELECT * FROM Product

-- Inserting values into the Order table
INSERT INTO Orders(Order_id, Customer_id, Product_id, Order_date, Quantity, Total_amount)
VALUES            (1, 1, 1, '2021-01-01', 10, 10 * 10),
                  (2, 1, 2, '2021-01-02', 5, 5* 20),
				  (3, 2, 1, '2021-01-03', 3, 3* 15);

DROP TABLE Orders

-- Inserting values into the Order table ( Disregard ) the earlier syntax

INSERT INTO Orders(Order_id, Customer_id, Product_id, Order_date, Quantity, Total_amount)
VALUES            (1, 1, 1, '2021-01-01', 10, 10 * 10),
                  (2, 1, 2, '2021-01-02', 5, 5 * 20),
				  (3, 2, 1, '2021-01-03', 3, 3 * 10),
				  (4, 2, 2, '2021-01-04', 7, 7 * 20),
				  (5, 3, 1, '2021-01-05', 2, 2 * 10),
				  (6, 3, 3, '2021-01-06', 3, 3 * 15);

SELECT * FROM Orders

SELECT * FROM Orders
SELECT * FROM Customer
SELECT * FROM Product

--3 Joining the tables together to get the customers that ordered for widget and gadget along with the total cost of the products
SELECT 
C.customer_name,
P.product_name, 
O.quantity * P.product_price AS total_amount
FROM
Orders AS O
JOIN 
Customer AS C ON O.customer_id = C.customer_id
JOIN Product AS P ON O.product_id = P.product_id
WHERE
P.product_name IN ('Widget', 'Gadget') AND O.quantity >= 1;

-- 4 Retrieving the names of customers who has placed an order for atleast one widget along with the total cost
SELECT  
C.customer_name,
P.product_name, 
O.quantity * P.product_price AS total_amount
FROM
Orders AS O
JOIN 
Customer AS C ON O.customer_id = C.customer_id
JOIN Product AS P ON O.product_id = P.product_id
WHERE
P.product_name IN ('Widget') AND O.quantity >= 1;

-- 5 Retrieving the names of customers who has placed an order for atleast one gadget along with the total cost
SELECT
C.customer_name,
P.product_name, 
O.quantity * P.product_price AS total_amount
FROM
Orders AS O
JOIN 
Customer AS C ON O.customer_id = C.customer_id
JOIN Product AS P ON O.product_id = P.product_id
WHERE
P.product_name IN ('Gadget') AND O.quantity >= 1;

-- 6 Retrieving the names of customers who has placed an order for atleast one doohickey along with the total cost
SELECT 
C.customer_name,
P.product_name, 
O.quantity * P.product_price AS total_amount
FROM
Orders AS O
JOIN 
Customer AS C ON O.customer_id = C.customer_id
JOIN Product AS P ON O.product_id = P.product_id
WHERE
P.product_name IN ('Doohickey') AND O.quantity >= 1;

-- 7 Retrieving the total number of widget and gadget ordered by each customer along with the total cost
SELECT
C.customer_name, P.product_name, COUNT(*) AS Total_count
FROM
Customer AS C
JOIN Orders AS O
ON C.customer_id = O.customer_id
JOIN Product AS P
ON O.product_id = P.product_id
WHERE
P.product_name IN ('Widget', 'Gadget')
GROUP BY C.customer_name, P.product_name;


-- 8 Retrieving the names of product that has been ordered by atleast one customer along with the total quantity
SELECT P.product_name,
SUM(O.quantity) AS total_qty_ordered
FROM Orders AS O
JOIN Product AS P ON P.Product_id = O.product_id
GROUP BY P.Product_name
HAVING SUM(O.quantity) >= 1;

-- 9 Retrieving names of customers who have placed the most orders along with total number of orders
SELECT C.customer_name, COUNT(*) AS Total_Qty_ordered
FROM Orders AS O
JOIN Customer AS C ON C.customer_id = O.customer_id
GROUP BY C.customer_name
HAVING SUM(O.quantity) >= 1;


-- 10 Retrieving the names of products orders, ordered the most along with the total quantity of each product that was ordered
SELECT P.product_name, COUNT(*) AS Total_quantity
FROM
Product AS P
JOIN Orders AS O
ON P.product_id = O.product_id
GROUP BY P.product_name
ORDER BY Total_quantity DESC;

-- 11 Retrieving the names of customers who has placed an order everyday of the week along with the total orders placed by each customer
SELECT
C.customer_name,
COUNT(Distinct O.Order_id) AS total_days_Ordered
FROM
Customer AS C
JOIN Orders AS O
ON C.customer_id = O.customer_id
GROUP BY C.customer_name
HAVING COUNT(Distinct DATEPART(weekday, O.Order_date)) = 7;










