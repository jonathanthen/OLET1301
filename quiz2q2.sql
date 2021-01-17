SELECT sale_id, purchase_price,
CASE
    WHEN house_number IS NULL THEN 'Not Available'
    ELSE house_number
    END AS "House (Number)",
CASE
    WHEN unit_number IS NULL THEN 'Not Available'
    ELSE CAST(unit_number AS TEXT)
    END AS "Unit (Number)",
    street, locality
    
FROM Sales NATURAL JOIN Properties NATURAL JOIN Localities
WHERE purchase_price >= 1000000
ORDER BY sale_id;