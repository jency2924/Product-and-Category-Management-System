USE ecommerceD__B;
INSERT INTO Category (Category_Name, Description)
VALUES
('Electronics', 'Electronic devices and accessories'),
('Clothing', 'Men and women clothing products'),
('Books', 'Educational and general books'),
('Home Appliances', 'Appliances used at home');
INSERT INTO Product
(Product_Name, Category_ID, Price, Stock_Quantity)
VALUES
('Laptop', 1, 55000, 20),
('Smartphone', 1, 25000, 35),
('Bluetooth Headphones', 1, 1800, 60),
('Shoes', 2, 2500, 50),
('T-Shirt', 2, 600, 100),
('Jeans', 2, 1500, 40),
('The Alchemist', 3, 350, 75),
('Atomic Habits', 3, 450, 65),
('Data Structures Text', 3, 700, 30),
('Refrigerator', 4, 32000, 12),
('Washing Machine', 4, 28000, 10),
('Microwave Oven', 4, 9500, 18);
SELECT * FROM Category;
SELECT * FROM Product;