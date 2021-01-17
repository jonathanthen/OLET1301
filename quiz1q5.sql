SELECT MIN(purchase_price), MAX(purchase_price), AVG(purchase_price)
FROM Sales NATURAL JOIN Properties NATURAL JOIN Districts
WHERE contract_date >= '2017-01-01' AND contract_date < '2018-01-01'
AND council_name = 'PARRAMATTA'
AND primary_purpose = 'COMMERCIAL'
OR primary_purpose = 'INDUSTRIAL';