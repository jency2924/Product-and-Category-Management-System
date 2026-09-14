USE ecommerceD__B;
SET SQL_SAFE_UPDATES = 0;
INSERT INTO Product
(Product_Name, Category_ID, Price, Stock_Quantity)
VALUES
('Smart Watch', 1, 4500, 25);
SELECT * FROM Category;
SELECT * FROM Product
WHERE Product_Name = 'Smart Watch';

SELECT * FROM Product;

UPDATE Product
SET Price = 58000
WHERE Product_Name = 'Laptop';

SELECT * FROM Product
WHERE Product_Name = 'Laptop';

UPDATE Product
SET Stock_Quantity = Stock_Quantity + 15
WHERE Product_Name = 'Laptop';

SELECT * FROM Product
WHERE Product_Name = 'Laptop';

UPDATE Product
SET Stock_Quantity = Stock_Quantity - 2
WHERE Product_Name = 'Shoes'
AND Stock_Quantity >= 2;

SELECT * FROM Product
WHERE Product_Name = 'Shoes';

DELETE FROM Product
WHERE Product_Name = 'Microwave Oven';

SELECT * FROM Product
WHERE Product_Name = 'Microwave Oven';

SET SQL_SAFE_UPDATES = 1;