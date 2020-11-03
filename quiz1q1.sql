SELECT *
FROM Sales
WHERE purchase_price <= 100000
ORDER BY contract_date DESC, property_id ASC;