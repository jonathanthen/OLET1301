SELECT council_name, string_agg(COALESCE(house_number::text, '') || ' ' ||
  COALESCE(street::text, '') || ' ' || COALESCE(locality::text, ''), ', ' 
  ORDER BY contract_date ASC) AS "commercial_properties"
  
/*FROM Properties FULL OUTER JOIN Sales USING (property_id)
                FULL OUTER JOIN Localities USING (locality_id)
                FULL OUTER JOIN Districts USING (district_code)*/
FROM Properties NATURAL JOIN Sales NATURAL JOIN Localities NATURAL JOIN Districts
                
WHERE EXTRACT(year FROM contract_date) = '2017'
AND primary_purpose = 'COMMERCIAL'
GROUP BY council_name
ORDER BY council_name ASC;