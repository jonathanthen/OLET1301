SELECT property_id, primary_purpose, locality, COALESCE(area::text, 'N/A') as "Area"
FROM (Properties NATURAL JOIN Localities) LEFT OUTER JOIN Areas USING (area_id)
WHERE property_id NOT IN (SELECT property_id
                          FROM Sales);