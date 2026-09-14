USE ecommerceD__B;
SELECT c.Category_Name,
       p.Product_Name,
       p.Price,
       p.Stock_Quantity
FROM Category c
JOIN Product p
ON c.Category_ID = p.Category_ID
ORDER BY c.Category_Name, p.Product_Name;


SELECT c.Category_Name,
       COUNT(p.Product_ID) AS Product_Count
FROM Category c
LEFT JOIN Product p
ON c.Category_ID = p.Category_ID
GROUP BY c.Category_ID, c.Category_Name;

SELECT c.Category_Name,
       p.Product_Name,
       p.Price
FROM Category c
JOIN Product p
ON c.Category_ID = p.Category_ID
WHERE p.Price = (
    SELECT MAX(p2.Price)
    FROM Product p2
    WHERE p2.Category_ID = p.Category_ID
);

SELECT c.Category_Name,
       COUNT(p.Product_ID) AS Product_Count
FROM Category c
JOIN Product p
ON c.Category_ID = p.Category_ID
GROUP BY c.Category_ID, c.Category_Name
HAVING COUNT(p.Product_ID) > 5;

SELECT c.Category_Name,
       AVG(p.Price) AS Average_Price
FROM Category c
JOIN Product p
ON c.Category_ID = p.Category_ID
GROUP BY c.Category_ID, c.Category_Name;