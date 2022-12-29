/*You vaguely remember that the crime was a ​murder​ that occurred sometime on 
​Jan.15, 2018​ and that it took place in ​SQL City​. Start by retrieving the 
corresponding crime scene report from the police department’s database.*/

/*select * 
from crime_scene_report
where type='murder'
and date=20180115
and city='SQL City';*/

/*Security footage shows that there were 2 witnesses. The first witness lives at 
the last house on "Northwestern Dr". The second witness, named Annabel, lives 
somewhere on "Franklin Ave".*/

/*select *
from person
where address_street_name='Northwestern Dr';*/
	--> id=99826 name=Ivy Kazarian license_id=994470 address_number=892	
	--  address_street_name=Northwestern Dr	ssn=208359813

/*select *
from person
where address_street_name='Franklin Ave';*/
    --> id=16371 name=Annabel Miller license_id=490173 address_number=103	
	--  address_street_name=Franklin Ave ssn=318771143
	
/*select * 
from interview
where person_id=99826;*/

/*select *
from interview
where person_id=16371;*/
	--> I saw the murder happen, and I recognized the killer from my gym when I 
	--  was working out last week on January the 9th.
	
/*select * 
from get_fit_now_member
where person_id=16371;*/
	--> id=90081 person_id=16371 name=Annabel Miller start_date=20160208 status=gold
	
/*select * 
from get_fit_now_check_in 
where membership_id='90081';*/
	--> id=90081 check_in_date=20180109	check_in_time=1600 check_out_time=1700

/*select * 
from get_fit_now_check_in 
where check_in_date=20180109;*/
	--> 48Z7A	20180109	1600	1730
	--  48Z55	20180109	1530	1700
	
/*select * 
from get_fit_now_member
where id='48Z7A';*/
	--> 48Z7A	28819	Joe Germuska	20160305	gold

/*select * 
from get_fit_now_member
where id='48Z55';*/
	--> 48Z55	67318	Jeremy Bowers	20160101	gold
	
/*select * 
from interview
where person_id=67318;*/
	--> I was hired by a woman with a lot of money. I don't know her name 
	-- but I know she's around 5'5" (65") or 5'7" (67"). She has red hair and she 
	-- drives a Tesla Model S. I know that she attended the SQL Symphony Concert 
	-- 3 times in December 2017.
	
/*select *
from drivers_license 
where hair_color='red'
and height between 65 and 67
and car_make='Tesla'
and car_model='Model S';*/
	--> 202298	68	66	green	red	female	500123	Tesla	Model S
	--  291182	65	66	blue	red	female	08CM64	Tesla	Model S
	--  918773	48	65	black	red	female	917UU3	Tesla	Model S
	
/*select * 
from person
where license_id=202298;*/
	--> 99716	Miranda Priestly	202298	1883	Golden Ave	987756388
	
/*select * 
from person
where license_id=291182;*/
	--> 90700	Regina George	291182	332	Maple Ave	337169072
	
/*select * 
from person
where license_id=918773;*/
	--> 78881	Red Korb	918773	107	Camerata Dr	961388910

/*select *
from facebook_event_checkin
where event_name='SQL Symphony Concert'
and date like '201712%'
and person_id=99716;*/
	--> 99716	1143	SQL Symphony Concert	20171206
	--  99716	1143	SQL Symphony Concert	20171212
	--  99716	1143	SQL Symphony Concert	20171229

-- verifying the suspect has 'a lot of money'
/*select *
from income
where ssn='987756388';*/

-- checking solution...
INSERT INTO solution VALUES (1, 'Miranda Priestly');
        
        SELECT value FROM solution;

-- FOUND THE KILLER!              
