1.

INSERT INTO COUNTRY(cn_code, country) VALUES ('ES','Spain');

INSERT INTO LANGUAGE(ln_code, language) VALUES ('ES','Spanish');

INSERT INTO OFFICIAL_ROLE(official_id, role) VALUES ('SPN99710','Judge');

INSERT INTO OFFICIAL(official, country, name, preffered_lng, usage_1) VALUES ('SPN99710','ES','Daniel Ortega', 'ES','45 minutes');

INSERT INTO LOCATION_TYPE(type) VALUES ('Other');

INSERT INTO LOCATION(location, start_streetNo, start_streetName, start_suburb, start_state, start_postalCode, end_streetNo, end_streetName, end_suburb, end_state, end_postalCode) VALUES (6, '16', 'Nielsens Road', 'Gold Coast', ' ', ' ','117','Pacific Avenue','Gold Coast',' ',' ');

INSERT INTO VEHICLE(vin, registration, make, model, color, current_odo, pssngr_capacity, availability) VALUES ('SANFDAE11U1286116', '439 AZC', 'Hyhundai', 'Santafe', 'White', 26982, 4, 'YES');

INSERT INTO DRIVER(license_no, name, clearence_level, languages, travelled_kms) VALUES ('098674432', 'John Arnold', '3', 'EN ES', 1350);

INSERT INTO COUNTRY_LANGUAGE(country, language) VALUES ('ES','ES');

INSERT INTO DRIVER_LANGUAGE(driver_no, language) VALUES ('098674432','EN'), 
('098674432','ES');

INSERT INTO TRIP(reference, official, vehicle, driver_no, start_datetime, end_datetime, location_id) VALUES ('SPJQ1','SPN99710', 'SANFDAE11U1286116','098674432','2018-04-09 10:00', '2018-04-09 10:45',6);


2. 

UPDATE TRIP SET start_datetime = '2018-04-09 10:15' , end_datetime = '2018-04-09 11:55' WHERE reference = 'SPJQ1';


-------------------------------------------------------------------------

Completed Trips Table creation for better finalization >>>>

CREATE TABLE COMPLETED_TRIPS(
id INT AUTO_INCREMENT NOT NULL,
reference VARCHAR(15),
start_datetime DATETIME,
end_datetime DATETIME,
start_odo INT NOT NULL,
end_odo INT NOT NULL,
PRIMARY KEY(id),
FOREIGN KEY(reference) REFERENCES TRIP(reference)
);

INSERT INTO COMPLETED_TRIPS(reference,start_datetime, end_datetime, start_odo, end_odo) VALUES ('SPJQ1','2018-04-09 10:15', '2018-04-09 11:55',26982,27119);

