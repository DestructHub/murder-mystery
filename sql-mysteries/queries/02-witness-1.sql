-- Witness 1

SELECT id, name
FROM person
WHERE address_street_name = 'Northwestern Dr'
ORDER BY address_number DESC
LIMIT 1
-- id, name
-- 14887, Morty Chapiro