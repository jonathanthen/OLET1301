SELECT sale_id, contract_date, purchase_price
FROM Sales NATURAL JOIN Properties NATURAL JOIN Localities
WHERE unit_number = 11
AND house_number = '28'
AND street = 'COWMEADOW RD'
AND locality = 'MOUNT HUTTON'
AND contract_date < '2017-03-16'
ORDER BY sale_id ASC, contract_date ASC, purchase_price ASC; 