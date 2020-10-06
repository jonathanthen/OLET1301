SELECT property_id, house_number, unit_number, street, locality
FROM Properties NATURAL JOIN Localities
WHERE area_id IS NULL AND primary_purpose = 'COMMERCIAL'
ORDER BY property_id