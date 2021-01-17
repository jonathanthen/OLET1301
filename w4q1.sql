SELECT station, site
  FROM Stations, Organisations
  WHERE Stations.stnowner = Organisations.code
  AND Organisations.name = 'NSW Department of Water and Energy';