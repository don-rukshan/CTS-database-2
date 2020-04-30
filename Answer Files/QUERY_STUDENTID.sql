1. 
SELECT make,model,registration,pssngr_capacity 
FROM VEHICLE 
WHERE availability='YES' ORDER BY pssngr_capacity ASC;


2. 
SELECT * 
FROM LOCATION 
WHERE start_streetName like '% %d' OR end_streetName like'% %d';


3. 
Country & Language in Understandable English >>>

SELECT OFFICIAL.name, COUNTRY.country, LANGUAGE.language 
FROM OFFICIAL 
INNER JOIN COUNTRY on COUNTRY.cn_code = OFFICIAL.country
INNER JOIN LANGUAGE on LANGUAGE.ln_code = OFFICIAL.preffered_lng
ORDER BY OFFICIAL.name;

Country & Language in ISO format >>>>

SELECT name, country, preffered_lng
FROM OFFICIAL
ORDER BY name;


4.
SELECT MAINTANANCE_REPAIR.date, VEHICLE.registration, VEHICLE.make, VEHICLE.model
FROM MAINTANANCE_REPAIR
INNER JOIN VEHICLE on VEHICLE.vin = MAINTANANCE_REPAIR.vehicle_vin
WHERE MAINTANANCE_REPAIR.nature='M' AND date IN (SELECT max(date) FROM MAINTANANCE_REPAIR);


5.
SELECT name, travelled_kms 
FROM DRIVER
WHERE travelled_kms>1000
ORDER BY travelled_kms ASC;


6.
SELECT VEHICLE.registration, VEHICLE.make, VEHICLE.model, MAINTANANCE_REPAIR.cost
FROM MAINTANANCE_REPAIR
INNER JOIN VEHICLE on VEHICLE.vin = MAINTANANCE_REPAIR.vehicle_vin
WHERE nature='R' 
HAVING cost > avg(cost) IN (select avg(cost) from maintanance_repair WHERE nature='R');


7.
SELECT OFFICIAL.name, OFFICIAL_ROLE.role
FROM OFFICIAL_ROLE
INNER JOIN OFFICIAL on OFFICIAL.official = OFFICIAL_ROLE.official_id
WHERE NOT EXISTS (SELECT * FROM TRIP WHERE OFFICIAL_ROLE.official_id = TRIP.official);


8.
SELECT vehicle_vin, sum(cost) as total , nature
FROM MAINTANANCE_REPAIR
GROUP BY vehicle_vin,nature
ORDER BY total DESC
LIMIT 2;



