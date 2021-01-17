SELECT ROUND(AVG(temperature), 1) AS "mean",
       ROUND(STDDEV_SAMP(temperature), 1) AS "stddev",
       MODE() WITHIN GROUP(ORDER BY temperature) AS "mode"
FROM Measurements;