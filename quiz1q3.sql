SELECT sale_id, TO_CHAR(contract_date, 'DD Month YYYY') AS "purchase_date", 
        purchase_price, district_code,
        CASE 
          WHEN area_type = 'H' THEN area*10000
          WHEN area_type = 'M' THEN area
          ELSE area
        END AS "surface_area"
FROM Sales NATURAL JOIN Properties NATURAL JOIN Areas
WHERE contract_date >= '01 February 2017' AND contract_date < '01 April 2017'
ORDER BY surface_area DESC;