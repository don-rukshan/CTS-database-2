INSERT INTO LANGUAGE(ln_code, language) VALUES ('EN','English'),
('ZH','Chinese'),
('FR','French'),
('DE','German'),
('HI','Hindi');


INSERT INTO COUNTRY(cn_code, country) VALUES ('AU','Australia'),
('CN','China'),
('FR','France'),
('DE','Germany'),
('IN','India');


INSERT INTO LOCATION_TYPE(type) VALUES ('Hotel'),
('Airport'),
('Shopping Mall'),
('Aquatic Centre'),
('Gaming Centre');


INSERT INTO OFFICIAL_ROLE(official_id, role) VALUES ('HDCH1','Head Coach'),
('JDG1','Judge'),
('PHY1','Physician'),
('JDG2','Judge'),
('ASSCH1','Assistant Coach'),
('ASSCH2','Assistant Coach');

---------------------------------------------


INSERT INTO VEHICLE(vin, registration, make, model, color, current_odo, pssngr_capacity, availability) VALUES ('SANBAN12345678BAMB', '459 ABC', 'Volvo', 'XC90 Premium', 'White', 897, 4, 'YES'),
('JANBAN123AB678BAMG', '297 JMB', 'Toyota', 'Camry', 'Silver', 5629, 5, 'YES'),
('HONDAN33345678GANB', '510 RAK', 'Honda', 'Odyssey', 'Black', 563, 7, 'YES'),
('FORDAN59105678TORH', '918 YYH', 'Ford', 'Transit Luton', 'White', 4451, 2, 'NO'),
('BSHRAN133H8678QOED', '973 OML', 'Audi', 'A1', 'Grey', 7761, 3, 'YES');


INSERT INTO DRIVER(license_no, name, clearence_level, languages, travelled_kms) VALUES ('1029384756QPWOEIRU', 'Joe Noel', '1', 'EN HY BA',700),
('5987654321QPWOEIRU', 'Pitt Grey', '2', 'EN HI DE',2500),
('890QPWOEIRU7654321', 'Brad Jey', '3', 'FR ZH EN',5000),
('110QPWOEIRU765TREW', 'Mike Payoe', '4', 'EN DE FR ZH',10000),
('832190QP765WOEIRU4', 'Richie Mel', '1', 'EN',950);

---------------------------------------------


INSERT INTO MAINTANANCE_REPAIR(vehicle_vin, current_odo, date, cost, description, nature) VALUES ('JANBAN123AB678BAMG',5465, '2020-03-01', 75.10, 'Oil filter change', 'M'),
('HONDAN33345678GANB', 217, '2020-04-02', 100.00, 'Engine Gasket Kit repair', 'R'),
('BSHRAN133H8678QOED', 7700, '2020-04-21', 45.60, 'Regular Service', 'M'),
('HONDAN33345678GANB', 521, '2020-05-09', 24.50, 'Engine & Transmission mounts', 'R'),
('FORDAN59105678TORH', 4451, '2020-06-11', 110.00, 'Wheel Change & Alignment', 'M');

---------------------------------------------


INSERT INTO OFFICIAL(official, country, name, preffered_lng, usage_1) VALUES ('HDCH1','AU','Jake boi', 'EN','2hrs'),
('JDG1','CN','Don Ruksh', 'ZH','8hrs'),
('PHY1','FR','Prathap Costa', 'FR','7.5hrs'),
('JDG2','DE','Rose Miller', 'DE','1hr 25 minutes'),
('ASSCH1','IN','Joey Tribbiani', 'HI','12hrs'),
('ASSCH2','US','Chandler Bing', 'EN','5hrs');


INSERT INTO LOCATION(location, start_streetNo, start_streetName, start_suburb, start_state, start_postalCode, end_streetNo, end_streetName, end_suburb, end_state, end_postalCode) VALUES (1, '23D', '1st Lane', 'Gracius', 'Arizona', '1432H','4','Temple Road','Reeves','Arizona','1476J'),
(2, '23D', '1st Lane', 'Gracius', 'Arizona', '1432H','42','Mall Street','Kelly','Arizona','1486A'),
(3, '23D', '1st Lane', 'Gracius', 'Arizona', '1432H','4','Temple Road','Reeves','Arizona','1476J'),
(4, '1', 'Airport Road', 'texie', 'Arizona', '11165','23D', '1st Lane', 'Gracius', 'Arizona', '1432H'),
(5, '24/1A', 'Main Street', 'Gracius', 'Arizona', '1412H','23D', '1st Lane', 'Gracius', 'Arizona', '1432A');


INSERT INTO COUNTRY_LANGUAGE(country, language) VALUES ('AU','EN'),
('CN','ZH'),
('CN','EN'),
('FR','FR'),
('FR','EN'),
('DE','DE'),
('DE','FR'),
('DE','EN'),
('IN','HI'),
('IN','EN');


INSERT INTO DRIVER_LANGUAGE(driver_no, language) VALUES ('1029384756QPWOEIRU','EN')
('1029384756QPWOEIRU','HY'),
('1029384756QPWOEIRU','BA'),
('5987654321QPWOEIRU','EN'),
('5987654321QPWOEIRU','HI'),
('5987654321QPWOEIRU','DE'),
('890QPWOEIRU7654321','FR'),
('890QPWOEIRU7654321','ZH'),
('890QPWOEIRU7654321','EN'),
('110QPWOEIRU765TREW','EN'),
('110QPWOEIRU765TREW','DE'),
('110QPWOEIRU765TREW','FR'),
('110QPWOEIRU765TREW','ZH'),
('832190QP765WOEIRU4','EN');

---------------------------------------------


INSERT INTO TRIP(reference, official, vehicle, driver_no, start_datetime, end_datetime, location_id) VALUES ('ABC1','HDCH1', 'BSHRAN133H8678QOED','832190QP765WOEIRU4','2020-07-03 08:30', '2020-07-03 10:30',1),
('QWE1','JDG1', 'HONDAN33345678GANB','110QPWOEIRU765TREW','2020-07-03 08:30', '2020-07-03 16:30',2),
('CDE2','PHY1', 'SANBAN12345678BAMB','890QPWOEIRU7654321','2020-07-04 08:30', '2020-07-04 16:00',3),
('ABC2','JDG2', 'FORDAN59105678TORH','5987654321QPWOEIRU','2020-07-04 08:30', '2020-07-04 10:00',4),
('NGC1','ASSCH1','HONDAN33345678GANB','5987654321QPWOEIRU','2020-07-08 08:30', '2020-07-08 20:30',5);


