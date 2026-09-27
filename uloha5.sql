SELECT 
    p.product_name, 
    SUM(o.sales) AS total_sales
FROM 
    products AS p
LEFT JOIN 
    orders AS o ON p.product_id = o.product_id
GROUP BY 
    p.product_id, 
    p.product_name;