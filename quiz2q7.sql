SELECT EXTRACT(year FROM contract_date) AS "year", council_name,
ROUND(AVG(purchase_price), 0) AS "avg_price", COUNT(sale_id) AS "num_sales"
  
FROM Sales NATURAL JOIN Properties NATURAL JOIN Districts
GROUP BY "year", council_name HAVING AVG(purchase_price) > 1000000
ORDER BY "year" ASC, "avg_price" DESC;