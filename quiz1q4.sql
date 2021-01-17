SELECT ROUND(AVG(purchase_price), 0) AS "average purchase price",
        COUNT(sale_id)
FROM Sales NATURAL JOIN Properties
WHERE primary_purpose = 'RESIDENCE'
     AND (settlement_date - contract_date) >= 30
     AND contract_date BETWEEN '2017-01-01' AND '2018-01-01';