SELECT COUNT(sale_id) AS "number_of_settled_sales", MIN(purchase_price) AS "min_purchase_price", MAX(purchase_price) AS "max_purchase_price"
FROM Sales
WHERE EXTRACT(year FROM settlement_date) = 2017