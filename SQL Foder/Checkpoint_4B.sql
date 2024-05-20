CREATE DATABASE Checkpoint_4B
-- Using the created database

-- Creating the customers table
CREATE TABLE Customers(
customer_id INT PRIMARY KEY ,
name VARCHAR (20) NOT NULL,
address VARCHAR (20) NOT NULL);

SELECT * FROM Customers

-- Creating the products table
CREATE TABLE Products(
Product_id INT PRIMARY KEY,
Product_name VARCHAR (20) NOT NULL,
Product_price DECIMAL (10,2) CHECK(Product_price > 0) NOT NULL,
);

SELECT * FROM Products

-- Creating the Orders table
CREATE TABLE Orders(
Order_id INT PRIMARY KEY,
Customer_id INT FOREIGN KEY REFERENCES Customers (Customer_id) NOT NULL,
Product_id INT FOREIGN KEY REFERENCES Products (Product_id) NOT NULL,
Order_quantity INT NOT NULL,
Order_date DATE NOT NULL,
);

SELECT * FROM Orders

