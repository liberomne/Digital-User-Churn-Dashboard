SELECT 
    o.Date AS order_date,
    pc.CategoryName AS category_name,
    p.ProdName AS product_name,
    p.Price AS product_price,
    o.Quantity AS order_qty,
    (o.Quantity * p.Price) AS total_sales,
    c.CustomerEmail AS cust_email,
    c.CustomerCity AS cust_city
FROM `my-project-97-445015.DigitalChurn.Orders` o
JOIN `my-project-97-445015.DigitalChurn.Customers` c 
    ON o.CustomerID = c.CustomerID
JOIN `my-project-97-445015.DigitalChurn.Products` p 
    ON o.ProdNumber = p.ProdNumber
JOIN `my-project-97-445015.DigitalChurn.ProductCategory` pc 
    ON p.Category = pc.CategoryID
ORDER BY o.Date ASC;