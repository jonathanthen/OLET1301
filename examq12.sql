SELECT energy_name,
       ROUND(SUM(energy_amount)) AS "energy production [TWh]",
       RANK() OVER (ORDER BY ROUND(SUM(energy_amount)) DESC) AS "rank"
FROM PowerGeneration NATURAL JOIN EnergyTypes
WHERE upper(energy_type) = 'RENEWABLE'
GROUP BY energy_name
ORDER BY rank ASC