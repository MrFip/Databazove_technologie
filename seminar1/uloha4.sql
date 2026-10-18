SELECT 
    c.region, 
    SUM(o.sales) AS total_sales
FROM 
    customers AS c
LEFT JOIN 
    orders AS o ON c.customer_id = o.customer_id
GROUP BY 
    c.region;