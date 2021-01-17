SELECT name AS "language"
FROM Language L
WHERE NOT EXISTS (SELECT *
                  FROM Films F
                  WHERE F.language_id = L.language_id
                  AND F.language_id IS NOT NULL)
ORDER BY name ASC;