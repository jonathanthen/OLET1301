SELECT primary_purpose AS "Purpose", ROUND(AVG(purchase_price), 2) AS "Avg"
FROM Sales NATURAL JOIN Properties
WHERE primary_purpose LIKE '%LAND%'
GROUP BY primary_purpose
ORDER BY "Avg" ASC;