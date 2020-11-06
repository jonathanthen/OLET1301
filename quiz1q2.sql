SELECT COUNT(sale_id), 
        AVG(purchase_price) AS "avg_purchase_price",
        AVG(settlement_date - contract_date) AS "avg_settlement_period"
FROM Sales
WHERE contract_date >= '2016-02-01' AND contract_date < '2016-03-01';