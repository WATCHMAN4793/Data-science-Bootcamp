CREATE DATABASE Checkpoint_5BB
-- Making use of the created database
CREATE TABLE Wine(
Wine_id INT PRIMARY KEY,
Num_Wine INT NOT  NULL,
Category VARCHAR (50) NOT NULL,
Wine_Year DATE NOT NULL,
Degree Decimal (20, 2) NOT NULL,
Wine_harvest INT NOT NULL,
Wine_quantity INT NOT NULL);

SELECT * FROM Wine

CREATE TABLE Producer(
Producer_id INT PRIMARY KEY,
NumP INTEGER NOT NULL,
FirstName VARCHAR (50) NOT NULL,
LastName VARCHAR (50) NOT NULL,
Region VARCHAR (50) NOT NULL,
Producer_harvest INT NOT NULL,
Producer_quantity INT NOT NULL);

SELECT * FROM Producer

-- 3  Inserting data into the tables
INSERT INTO Wine(Wine_id, Num_Wine, Category, Wine_Year, Degree, Wine_harvest, Wine_quantity)
VALUES          (1, 5, 'Red Wine', '1987', 25, 5, 7),
                (2, 7, 'White Wine', '1988', 20, 8, 9),
				(3, 15, 'Rose Wine', '2001', 10, 6, 2),
				(4, 10, 'Fortified Wine', '2010', 15, 3, 2),
				(5, 8, 'Dessert Wine', '2012', 7, 4, 8),
				(6, 20, 'Sparkling Wine', '2016', 12, 5, 4),
				(7, 6, 'Pinot Noir', '2012', 10, 4, 8),
				(8, 15, 'Chardonnay', '1968', 15, 3, 1),
				(9, 14, 'Cabernet Sauvignor', '1956', 19, 3, 7),
				(10, 20, 'Merlot', '1942', 30, 3, 5),
				(11, 31, 'Riesling', '1932', 12, 2, 6),
				(12, 44, 'Syrah', '1934', 29, 4, 7),
				(13, 30, 'Pinot Grigio', '1955', 15, 4, 5),
				(14, 25, 'Sangiovese', '1925', 25, 7, 1),
				(15, 33, 'Sauvignon blanc', '1934', 33, 2, 9),
				(16, 22, 'Zinfandel', '1928', 18, 3, 7),
				(17, 25, 'Wine', '1966', 11, 2, 5),
				(18, 40, 'Malbec', '1977', 12, 7, 9),
				(19, 9, 'Nebbiolo', '1977', 15, 2, 6),
				(20, 21, 'Prosecco', '1988', 10, 5, 6),
				(21, 41, 'Orange Wine', '1999', 14, 3, 3),
				(22, 31, 'Rose', '2010', 10, 3, 5),
				(23, 15, 'Ice Wine', '2015', 10, 3, 5),
				(24, 40, 'Red Wine', '1922', 12, 5, 8),
				(25, 19, 'Cabanet Franc', '1966', 10, 2, 3),
				(26, 21, 'Carmenere', '1967', 12, 1, 7),
				(27, 29, 'Bordeaux Blend', '1985', 10, 6, 4),
				(28, 40, 'Pinotage', '1984', 11, 7, 3),
				(29, 33, 'Monstrell', '1982', 10, 5, 4),
				(30, 15, 'Petite Sirah', '1987', 10, 4, 2);

INSERT INTO Producer(Producer_id, NumP, FirstName, LastName, Region, Producer_harvest, Producer_quantity)
VALUES              (1, 45, 'Oscar', 'Watchman', 'Sousse', 4, 6),
				    (2, 20, 'Amos', 'June', 'New York', 2, 8),
					(3, 56, 'Wesley', 'Nosakhare', 'Sousse', 5, 8),
					(4, 21, 'Itohan', 'Osamwonyi', 'Sousse', 2, 5),
					(5, 15, 'Dorcas', 'Adebayo', 'Texas', 3, 7),
					(6, 25, 'Emeka', 'Ozonna', 'Ohio', 2, 6),
					(7, 18, 'Micheal', 'Edoja', 'Michighan', 2, 7),
					(8, 24, 'Micheal', 'Adeyemi', 'Hawaii', 5, 6),
					(9, 22, 'Daisy', 'Mercy', 'Florida', 2, 7),
					(10, 41, 'James', 'Akamego', 'Indiana', 5, 2),
					(11, 35, 'Eddy', 'Okoro', 'Alaska', 5, 7),
					(12, 23, 'Edward', 'Oghenebrume', 'Virginia', 3, 5),
					(13, 51, 'Alari', 'Nosa', 'Georgia', 5, 6),
					(14, 27, 'Nosa', 'Ogechi', 'Arizona', 2, 6),
					(15, 45, 'Abibat', 'Adebayo', 'Illinois', 3, 8),
					(16, 30, 'Joy', 'Johnson', 'Sousse', 5, 8),
					(17, 22, 'Faith', 'Johnson', 'Colorado', 4, 7),
					(18, 37, 'Emmanuel', 'Ejale', 'Maryland', 3, 8),
					(19, 31, 'Nora', 'Norman', 'California', 4, 7),
				    (20, 45, 'Christabel', 'Akowe', 'Maryland', 3, 8),
					(21, 42, 'Mercy', 'Itohan', 'Alabama', 2, 6),
					(22, 27, 'Mercy', 'Johnson', 'Utah', 3, 7),
					(23, 32, 'Kingsley', 'Idomah', 'Oregun', 2, 6),
					(24, 34, 'Abraham', 'Goodluck', 'Missouri', 7, 9),
					(25, 43, 'Prince', 'Osazuwa', 'Nevada', 8, 2),
					(26, 28, 'Osarose', 'Alari', 'Minnesota', 6, 2),
					(27, 36, 'Kelechi', 'Eddy', 'Lousianna', 4, 8),
					(28, 42, 'David', 'Isokpan', 'New Mexico', 5, 8),
					(29, 33, 'Precious', 'Akubuonyeukwu', 'Sousse', 4, 2),
					(30, 25, 'Miracle', 'Oriafo', 'Kentucky', 7, 2);

-- 4 List of producers
SELECT FirstName, LastName
FROM Producer

-- 5 List of Producers sorted by name
SELECT * 
FROM Producer
ORDER BY FirstName, LastName

-- 6 List of Sousse Producers
SELECT * 
FROM Producer
WHERE Region LIKE '%Sousse%';

-- 7 Calculate the total quantity of wine produced having the number 12.
SELECT SUM(Producer_quantity) AS Total_quantity
FROM Producer
WHERE Producer_id = 12;

-- 8 Calculating the quantity of wine produced by category.
SELECT Category,SUM(Wine_quantity) AS Total_quantity
FROM Wine
GROUP BY Category;

-- 9 Which producers in the Sousse region have harvested at least one wine in quantities greater than 300 liters? We want the names and first names of the producers, sorted in alphabetical order.
SELECT FirstName, Category
FROM Producer AS P
JOIN Wine AS W
ON Producer_id = Wine_id
WHERE Region = 'Sousse' AND Wine_quantity > 1
ORDER BY FirstName DESC;

-- 10 List the wine numbers that have a degree greater than 12 and that have been produced by producer number 24.
SELECT Wine.Num_Wine, Wine.category, Wine.degree, Producer.Producer_id, Producer.Producer_quantity
FROM Wine 
JOIN Producer ON Producer.Producer_id = Wine.Wine_id
WHERE Wine.Degree >= 12 AND Producer.Producer_id = 24;


SELECT * FROM Producer
SELECT * FROM Wine



