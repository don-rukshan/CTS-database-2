1.
CREATE DATABASE CTSDB<STUDENT_ID>;

-------------------------------------------------------------------------

2.
CREATE TABLE LANGUAGE(
ln_code BLOB(2), 
language VARCHAR(20), 
PRIMARY KEY(ln_code)
);


CREATE TABLE COUNTRY(
cn_code BLOB(2), 
country VARCHAR(20), 
PRIMARY KEY(cn_code)
);


CREATE TABLE LOCATION_TYPE(
location_id INT AUTO_INCREMENT NOT NULL, 
type VARCHAR(10), 
PRIMARY KEY(location_id)
);


CREATE TABLE OFFICIAL_ROLE(
official_id VARCHAR(10), 
role VARCHAR(10), 
PRIMARY KEY(official_id)
);

---------------------------------------------


CREATE TABLE VEHICLE(
vin VARCHAR(20), 
registration VARCHAR(6), 
make VARCHAR(10), 
model VARCHAR(10), 
color VARCHAR(10), 
current_odo INT NOT NULL, 
pssngr_capacity INT(2), 
availability ENUM('YES','NO'), 
PRIMARY KEY(vin)
);


CREATE TABLE DRIVER(
license_no VARCHAR(18), 
name VARCHAR(20), 
clearence_level ENUM('1','2','3','4'), 
languages BLOB(20), 
PRIMARY KEY(license_no)
);

---------------------------------------------


CREATE TABLE MAINTANANCE_REPAIR(
invoice_no INT AUTO_INCREMENT NOT NULL, 
vehicle VARCHAR(20), 
current_odo INT NOT NULL, 
date DATE, 
cost DOUBLE, 
description TEXT, 
nature ENUM('R','M'), 
PRIMARY KEY(invoice_no), 
FOREIGN KEY(vehicle) REFERENCES VEHICLE(vin)
); 

---------------------------------------------


CREATE TABLE OFFICIAL(
id INT AUTO_INCREMENT NOT NULL,
official VARCHAR(10),
country BLOB(2),
name VARCHAR(20),
preffered_lng BLOB(2),
usage VARCHAR(10),
PRIMARY KEY(id),
FOREIGN KEY(official) REFERENCES OFFICIAL_ROLE(official_id),
FORIEGN KEY(country) REFERENCES COUNTRY(cn_code),
FOREIGN KEY(preffered_lng) REFERENCES LANGUAGE(ln_code)
);


CREATE TABLE LOCATION(
id INT AUTO_INCREMENT NOT NULL,
location INT,
start_streetNo VARCHAR(6),
start_streetName VARCHAR(30),
start_suburb VARCHAR(15),
start_state VARCHAR(4),
start_postalCode VARCHAR(5),
end_streetNo VARCHAR(6),
end_streetName VARCHAR(30),
end_suburb VARCHAR(15),
end_state VARCHAR(4),
end_postalCode VARCHAR(5),
PRIMARY KEY(id),
FOREIGN KEY(location) REFERENCES LOCATION_TYPE(location_id)
);


CREATE TABLE COUNTRY_LANGUAGE(
id INT AUTO_INCREMENT NOT NULL,
country BLOB(2),
language BLOB(2),
PRIMARY KEY(id),
FORIEGN KEY(country) REFERENCES COUNTRY(cn_code),
FOREIGN KEY(language) REFERENCES LANGUAGE(ln_code)
);


CREATE TABLE DRIVER_LANGUAGE(
id INT AUTO_INCREMENT NOT NULL,
driver_no VARCHAR(18),
language BLOB(2),
PRIMARY KEY(id),
FOREIGN KEY(driver_no) REFERENCES DRIVER(license_no),
FOREIGN KEY(language) REFERENCES LANGUAGE(ln_code)
);

---------------------------------------------


CREATE TABLE TRIP(
reference VARCHAR(15),
official VARCHAR(10),
vehicle VARCHAR(20),
driver_no VARCHAR(18),
start_datetime DATETIME,
end_datetime DATETIME,
location_id INT,
PRIMARY KEY(reference),
FOREIGN KEY(official) REFERENCES OFFICIAL_ROLE(official_id),
FOREIGN KEY(vehicle) REFERENCES VEHICLE(vin),
FOREIGN KEY(driver_no) REFERENCES DRIVER(license_no),
FOREIGN KEY(location_id) REFERENCES LOCATION(id)
);

