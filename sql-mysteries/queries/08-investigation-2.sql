/*
I was hired by a woman with a lot of money. 
I don't know her name but I know she's around 5'5" (65") or 5'7" (67"). 
She has red hair and she drives a Tesla Model S. 
I know that she attended the SQL Symphony Concert 3 times in December 2017.
*/

SELECT p.id, p.name, COUNT(event_name) as event_count
FROM person as p
JOIN drivers_license as dl
	ON p.license_id = dl.id
JOIN facebook_event_checkin fb
	ON fb.person_id = p.id
WHERE gender = 'female' AND
	  height >= 65 AND height <= 67 AND
	  car_make = 'Tesla' AND car_model = 'Model S' AND
	  event_name = 'SQL Symphony Concert'
GROUP BY p.id
HAVING event_count = 3

-- 99716 Miranda Priestly

