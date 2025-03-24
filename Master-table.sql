SELECT
    o.Date AS order_date,
    pc.CategoryName AS category_name,
    p.ProdName AS product_name,
    p.Price AS product_price,
    o.Quantity AS order_qty,
    (p.Price * o.Quantity) AS total_sales,
    c.CustomerEmail AS cust_email,
    c.CustomerCity AS cust_city
FROM
    `pbirakamin-453715.MajuSejahtera.Orders` o
JOIN
    `pbirakamin-453715.MajuSejahtera.Products` p
    ON o.ProdNumber = p.ProdNumber
JOIN
    `pbirakamin-453715.MajuSejahtera.ProductCategory` pc
    ON p.Category = pc.CategoryID
JOIN
    `pbirakamin-453715.MajuSejahtera.Customer` c
    ON o.CustomerID = c.CustomerID
ORDER BY
 o.Date ASC;


