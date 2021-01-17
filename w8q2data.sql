SELECT C.category_id, name, COUNT(film_id) AS "count"
FROM Category C
     LEFT JOIN Film_Category FC ON (FC.category_id = C.category_id)
GROUP BY C.category_id, name
ORDER BY "count" DESC, name ASC;