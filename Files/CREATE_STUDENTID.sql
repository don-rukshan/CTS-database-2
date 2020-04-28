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
vin VARCHAR(20), 
current_odo INT NOT NULL, 
date DATE, 
cost DOUBLE, 
description VARCHAR(100), 
nature ENUM('R','M'), 
PRIMARY KEY(invoice_no), 
FOREIGN KEY(vin) REFERENCES vehicle(vin)
); 

---------------------------------------------


CREATE TABLE OFFICIAL(
CREATE TABLE LOCATION(
CREATE TABLE COUNTRY_LANGUAGE(
CREATE TABLE DRIVER_LANGUAGE(


CREATE TABLE TRIP(
