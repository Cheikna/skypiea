CREATE TABLE CLIENT(
ID serial primary key, 
VERSION integer, 
LAST_NAME VARCHAR(100), 
FIRST_NAME VARCHAR(100),
AGE integer,
EMAIL VARCHAR(255),
PHONE_NUMBER character varying(10),
STREET_NUMBER integer,
STREET_NAME VARCHAR(255),
ZIP_CODE VARCHAR(20),
CITY character varying(60),
COUNTRY VARCHAR(255)
);

CREATE TABLE SKYPIEA_USER (
ID serial primary key, 
VERSION integer, 
LAST_NAME VARCHAR(100), 
FIRST_NAME VARCHAR(100), 
USERNAME VARCHAR(150),
PASSWORD VARCHAR(100),
USER_TYPE VARCHAR(20),
LAST_CONNECTION_DATE TIMESTAMP				   
);
				  
CREATE TABLE STAFF (
ID serial primary key,
USER_ID integer REFERENCES SKYPIEA_USER(ID)	   
);
				  
CREATE TABLE RESIDENT (
ID serial primary key,
USER_ID integer REFERENCES SKYPIEA_USER(ID),
BIRTH_DAY TIMESTAMP
);

CREATE TABLE ROOM(
ID serial primary key, 
VERSION integer, 
DOOR_NUMBER integer,
FLOOR integer,
WIDTH numeric,
LENGTH numeric,
HEIGHT numeric,
WING VARCHAR(50),
SVG_POINT VARCHAR(50),
RESIDENT_ID integer
);

CREATE TABLE CONNECTED_OBJECT(
ID serial primary key, 
VERSION integer,
BRAND VARCHAR(100),
IP_ADDRESS VARCHAR(20),
MAC_ADDRESS VARCHAR(20),
LAST_MEASUREMENT_DATE TIMESTAMP,
LAST_PARAMETER_MODIFICATION_DATE TIMESTAMP,
STATUS VARCHAR(20),
STATE VARCHAR(20)
);

CREATE TABLE NON_MEDICAL_CONNECTED_OBJECT(
ID serial primary key, 
CONNECTED_OBJECT_ID integer REFERENCES CONNECTED_OBJECT(ID),
INSTALLATION_DATE TIMESTAMP,
NON_MEDICAL_OBJECT_TYPE VARCHAR(50),
ROOM_ID integer REFERENCES ROOM(ID),
SVG_POINT VARCHAR(50)
);

CREATE TABLE OBJECT_SETTING(
ID serial primary key,  
VERSION integer, 
NON_MEDICAL_CONNECTED_OBJECT_ID integer REFERENCES NON_MEDICAL_CONNECTED_OBJECT(ID),
SAVING_DATE TIMESTAMP
);

CREATE TABLE ALARM_CLOCK(
ID serial primary key,  
VERSION integer,
NOW_TIME TIMESTAMP
);

CREATE TABLE BINARY_SENSOR(
ID serial primary key,  
VERSION integer, 
NON_MEDICAL_CONNECTED_OBJECT_ID integer REFERENCES NON_MEDICAL_CONNECTED_OBJECT(ID),
IS_ACTIVE BOOLEAN,
BINARY_SENSOR_TYPE VARCHAR(50)
);

CREATE TABLE BULB(
ID serial primary key,  
VERSION integer, 
CURRENT_COLOR VARCHAR(50)
);

CREATE TABLE DOOR_SENSOR(
ID serial primary key,  
VERSION integer, 
IS_DOOR_LOCKED BOOLEAN, 
IS_DOOR_OPENED BOOLEAN
);

CREATE TABLE SHUTTER(
ID serial primary key,  
VERSION integer, 
IS_AUTOMATIC_MODE_ENABLED BOOLEAN, 
WINDOW_COVERAGE numeric
);

CREATE TABLE SUNSHINE_SENSOR(
ID serial primary key,  
VERSION integer, 
EXTERNAL_TEMPERATURE numeric, 
EXTERNAL_SUNSHINE numeric
);

CREATE TABLE SMOKE_SENSOR(
ID serial primary key,  
VERSION integer, 
THRESHOLD numeric, 
SENSITIVITY varchar(50)
);

CREATE TABLE TEMPERATURE_CONTROLLER(
ID serial primary key,  
VERSION integer,
THRESHOLD numeric,  
TEMPERATURE_MIN numeric, 
TEMPERATURE_MAX numeric, 
TEMPERATURE_SETTLED numeric, 
CURRENT_TEMPERATURE numeric,
IS_HEALTHING_CONNECTED boolean,
IS_AIR_CONDITIONNER_CONNECTED boolean
);

CREATE TABLE ELECTRONIC_TAG(
ID serial primary key, 
VERSION integer, 
RESIDENT_ID integer
);

CREATE TABLE HISTORY_MOVING(
ID serial primary key, 
VERSION integer, 
POSX integer, 
POSY integer, 
SAVING_TIME TIMESTAMP,
ELECTRONIC_TAG_ID integer references ELECTRONIC_TAG(ID)
);

CREATE TABLE FAILURE(
ID serial primary key, 
VERSION integer, 
NON_MEDICAL_CONNECTECD_OBJECT_ID integer,
INFORMATION text,
FAILURE_DATE timestamp
);
