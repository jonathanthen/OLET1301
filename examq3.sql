SELECT COUNT(*)
    FROM Sales S NATURAL JOIN Properties P
   WHERE EXTRACT(year from S.contract_date) = 2017 
     AND P.primary_purpose = 'RESIDENCE';