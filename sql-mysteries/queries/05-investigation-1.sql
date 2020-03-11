-- Crossing some clues:
-- The murder happeared at 20180109 in gym (witness 2)
-- It has gold membership (witness 1)
-- membership id starts with 48Z (witness 1)
-- The man got into a car with a plate that included "H42W". (witness 1)

SELECT membership_id, p.id, p.name, membership_status
FROM get_fit_now_check_in as gc
JOIN get_fit_now_member as gm
	ON gc.membership_id == gm.id
JOIN person as p
	ON p.id = gm.person_id
JOIN drivers_license as dl
	ON dl.id = p.license_id
WHERE check_in_date = '20180109' and 
      membership_status = 'gold' and
	  membership_id like '48Z%' and 
	  plate_number like '%H42W%'
	  
-- 67318  Jeremy Bowers
-- He again? Same guy from clmistery. (disclousure: no)


