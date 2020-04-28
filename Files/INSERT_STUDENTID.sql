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
('ASSCH1','Assistant Coach');

---------------------------------------------


INSERT INTO VEHICLE(vin, registration, make, model, color, current_odo, pssngr_capacity, availability) VALUES ('SANBAN12345678BAMB', '459 ABC', 'Volvo', 'XC90 Premium', 'White', 897, 4, 'YES'),
('JANBAN123AB678BAMG', '297 JMB', 'Toyota', 'Camry', 'Silver', 5629, 5, 'YES'),
('HONDAN33345678GANB', '510 RAK', 'Honda', 'Odyssey', 'Black', 563, 7, 'YES'),
('FORDAN59105678TORH', '918 YYH', 'Ford', 'Transit Luton', 'White', 4451, 2, 'NO'),
('BSHRAN133H8678QOED', '973 OML', 'Audi', 'A1', 'Grey', 7761, 3, 'YES');


INSERT INTO DRIVER(license_no, name, clearence_level, languages) VALUES ('1029384756QPWOEIRU', 'Joe Noel', '1', 'EN HY BA'),
('5987654321QPWOEIRU', 'Pitt Grey', '2', 'EN HI DE'),
('890QPWOEIRU7654321', 'Brad Jey', '3', 'FR ZH EN'),
('110QPWOEIRU765TREW', 'Mike Payoe', '4', 'EN DE FR ZH'),
('832190QP765WOEIRU4', 'Richie Mel', '1', 'EN');

---------------------------------------------


INSERT INTO MAINTANANCE_REPAIR(vehicle_vin, current_odo, date, cost, description, nature) VALUES ('JANBAN123AB678BAMG',5465, '2020-03-01', 75.10, 'Oil filter change', 'M'),
('HONDAN33345678GANB', 217, '2020-04-02', 100.00, 'Engine Gasket Kit repair', 'R'),
('BSHRAN133H8678QOED', 7700, '2020-04-21', 45.60, 'Regular Service', 'M'),
('HONDAN33345678GANB', 521, '2020-05-09', 24.50, 'Engine & Transmission mounts', 'R'),
('FORDAN59105678TORH', 4451, '2020-06-11', 110.00, 'Wheel Change & Alignment', 'M');

---------------------------------------------









