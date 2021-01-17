SELECT site,
       MIN(level_water) AS "min_level",
       percentile_cont(0.25) WITHIN GROUP (ORDER BY level_water) AS "Q1",
       percentile_cont(0.50) WITHIN GROUP (ORDER BY level_water) AS "median",
       percentile_cont(0.75) WITHIN GROUP (ORDER BY level_water) AS "Q3",
       MAX(level_water) AS "max_level"
  FROM Measurements NATURAL JOIN Stations
  GROUP BY site
  ORDER BY site ASC;