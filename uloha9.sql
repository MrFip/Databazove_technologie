SELECT 
    p.category, 
    ROUND(AVG(o.discount), 2) AS avg_discount
FROM 
    products AS p
JOIN 
    orders AS o ON p.product_id = o.product_id
GROUP BY 
    p.category;