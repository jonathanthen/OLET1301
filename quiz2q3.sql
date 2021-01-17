SELECT locality, COUNT(property_id), SUM(area), MIN(area), MAX(area), ROUND(AVG(area), 2) AS "AVG"
FROM Properties NATURAL JOIN Localities NATURAL JOIN Areas NATURAL JOIN Sales
WHERE primary_purpose = 'VACANT LAND'
GROUP BY locality HAVING COUNT(property_id) > 1
ORDER BY count DESC;

/*SELECT localities.locality, count(sale_id), sum(area), min(area), max(area), round(avg(area),2) as "AVG"
FROM Sales
JOIN Properties ON (properties.property_id = sales.property_id)
JOIN Localities ON (properties.locality_id = localities.locality_id)
JOIN Areas ON (properties.area_id = areas.area_id)
WHERE lower(primary_purpose) = 'vacant land'
GROUP BY locality HAVING COUNT(sale_id) > 1
ORDER BY count(sale_id) DESC;*/