  SELECT name
  FROM Organisations
  WHERE name LIKE 'Murray%' OR name LIKE '%Murray%' OR name LIKE '%Murray'
UNION
  SELECT site
  FROM Stations
  WHERE site LIKE 'Murray%' OR site LIKE '%Murray%' OR site LIKE '%Murray'
  
ORDER BY name DESC;
