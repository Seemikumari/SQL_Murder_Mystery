# Loading the database:
USE sql_murder_mystery_dataset;

# To show the tables present in our database:
SHOW tables;

# Selecting all the data in crime_scene_report:
SELECT * 
FROM crime_scene_report;

# Retrieving Crime Scene Report:
SELECT *
FROM crime_scene_report
WHERE date = '20180115'
AND city = 'SQL City'
AND type = 'murder';

# Witness Personal Details:
-- Witness 1
SELECT *
FROM person
WHERE address_street_name = 'Northwestern Dr'
ORDER BY address_number;

-- Witness 2
SELECT *
FROM person
WHERE address_street_name = 'Franklin Ave'
AND name LIKE '%Annabel%';

# Viewing Witness Interviews:
-- Witness 1
SELECT *
FROM interview
WHERE person_id = '16371';

-- Witness 2
SELECT *
FROM interview
WHERE person_id = '14887';

# Checking Gym Database:
SELECT * 
FROM get_fit_now_check_in
WHERE check_in_date = '20180109'
AND membership_id LIKE '48Z%';

# Checking Car Details:
SELECT *
FROM drivers_license
WHERE plate_number LIKE '%H42W%';

# Getting Personal Details:
-- Male 1
SELECT * 
FROM person
WHERE license_id = '423327';

-- Male 2
SELECT * 
FROM person
WHERE license_id = '664760';

# Getting the Membership Status at the Gym:
SELECT *
FROM get_fit_now_member
WHERE membership_status = 'gold'
AND id LIKE '48Z%';

#  I N V E S T I G A T I O N    R E P O R T

# Jeremy Bowers is the murderer!!!

# Because of the following reasons:
# 1. From the crime scene report we can find that we have two witnesses, 
#    (a) One who lives at the last house on "Northwestern Dr"
#	 (b) And the other whose name is "Annabel" and lives somewhere on "Franklin Ave"

# 2. (a) Our first witness 'Annabel' said that she saw the murderer last week on her gym on 09.01.2018, 
# 	 (b) Our second witness 'Morty Schapiro' said that:
#		(i) 	He saw a man running out, after hearing a gunshot.
#		(ii) 	He had a "Get Fit Now Gym" bag
#		(iii)	The membership number started with "48Z" - Only "Gold Members" have that kind of bag.
#		(iv)	The man got into a car whose number plate included the following initials - "H42W"

# 3. After getting the car details, I found out that there were total 3 persons (1 Female and 2 Males) with the number plate including "H42W" in it.
#	 (a) Suspect 1 : Jeremy Bowers/ ID: 67318 <--<
#    (b) Suspect 2 : Tushar Chandra/ ID: 51739

# 4. After reviewing the membership status of the gym, I found out that there were 2 persons with the "Gold Membership" and "48Z" initials on their gym bag.
#	 (a) Suspect 1 : Joe Germuska
#	 (b) Suspect 2 : Jeremy Bowers <--<

# 5. After analysing, 
#	 I found out that the murderer was 'Jeremy Bowers' who was a gold member at the gym, with bag no: "48Z55" who murdered on 15.01.2018, and 
#	 then fled with his car having number plate "0H42W2".
