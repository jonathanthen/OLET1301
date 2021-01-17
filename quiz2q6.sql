SELECT locality, COUNT(sale_id) AS "num_sales"
FROM Sales NATURAL JOIN Properties NATURAL JOIN Localities
WHERE EXTRACT(year FROM contract_date) = '2017'
GROUP BY locality
ORDER BY "num_sales" DESC, locality ASC
LIMIT 10;