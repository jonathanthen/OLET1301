SELECT CONCAT(house_number, ' ', street, ', ', locality, ' ', postcode, ' ','NSW') AS "address",
        TO_CHAR(contract_date, 'DD Mon YYYY') AS "purchase_date",
        ROUND(purchase_price/1000, 0) AS "purchase_price(k$)"
        
FROM Sales NATURAL JOIN Properties NATURAL JOIN Localities
WHERE postcode = 2428 AND 
      primary_purpose = 'RESIDENCE'
      
ORDER BY contract_date ASC, locality ASC, street ASC; 