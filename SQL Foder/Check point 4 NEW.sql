CREATE DATABASE Check_point_4;
-- making use of the created database
USE Check_point_4

-- Creating a customer's table
CREATE TABLE Customers(
Customer_id INT PRIMARY KEY, 
Customer_name VARCHAR(50) NOT NULL,
Customer_address VARCHAR(50) NOT NULL,
);
SELECT * FROM Customers


-- Creating a Product's table
CREATE TABLE Products(
Product_id INT PRIMARY KEY,
Product_name VARCHAR(50) NOT NULL,
Product_price DECIMAL (30,2) CHECK (Product_price> 0) NOT NULL,
);
SELECT * FROM Products

--Creating a Order's table
CREATE TABLE Orders(
Order_id INT PRIMARY KEY,
Customer_id INT FOREIGN KEY REFERENCES Customer (Customer_id) NOT NULL,
Product_id INT FOREIGN KEY REFERENCES Product(Product_id) NOT NULL,
Quantity INT NOT NULL,
Order_date DATE NOT NULL,
);
SELECT * FROM Orders

-- Inserting records into the products table
INSERT INTO Product(Product_id, Product_name, Product_price,)
VALUES             (1, 'Cookies', 10),
                   (2, 'Candy', 5.02);

SELECT * FROM Product

-- Inserting records into the customers table
INSERT INTO Customer(Customer_id, Customer_name, Customer_address)
VALUES              (1, 'Ahmed', 'Tunisia'),
                    (2, 'Coulibaly', 'Senegal'),
					(3, 'Hasan', 'Egypt');
SELECT * FROM Customers
-- Inserting records into the orders table
INSERT INTO Orders(Order_id, Customer_id, Product_id, Quantity, Order_date)
VALUES            (1, 1, 2, 3, '2023-01-22'),
                  (2, 2, 1, 10, '2023-04-14');

SELECT * FROM Orders

DELETE FROM Orders;
-- Updating the quantity of the second orders
UPDATE Orders
SET Quantity = 6 
WHERE Order_id = 2;
SELECT * FROM Orders

-- Deleting the third customer from the customers table

DELETE FROM Customers
WHERE Customer_id = 3;

SELECT * FROM Customers
SELECT * FROM Orders

-- Deleting the Orders table content

DELETE FROM Orders

-- Droping the orders table
DROP TABLE Orders




