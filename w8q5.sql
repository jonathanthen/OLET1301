SELECT EXTRACT(year FROM obsdate) AS "year",
       ROUND(SUM(energy_amount)) AS "energy production [TWh]",
       DENSE_RANK() OVER (ORDER BY ROUND(SUM(energy_amount)) DESC) AS "rank"
FROM PowerGeneration NATURAL JOIN EnergyTypes
GROUP BY "year";