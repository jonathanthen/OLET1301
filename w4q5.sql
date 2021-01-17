SELECT A.station, A.site, A.commence, Organisations.code, Organisations.name AS "owner"
 FROM Stations A
   JOIN Organisations ON (stnowner = code),
   Stations B
   
 WHERE B.site = 'Murray River at Barham'
 AND (A.commence < B.commence AND B.stnowner = A.stnowner);