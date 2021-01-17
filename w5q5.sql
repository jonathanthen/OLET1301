SELECT S.station, orga, state, obsdate, level_water, discharge, temperature, ec25
FROM Stations S
     LEFT OUTER JOIN Measurements M ON (S.station = M.station);