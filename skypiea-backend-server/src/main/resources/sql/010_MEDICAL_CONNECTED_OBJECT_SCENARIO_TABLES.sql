
DROP TABLE IF EXISTS TEMPERATURE_CONTROLLER_SCENARIO;
DROP TABLE IF EXISTS SHUTTER_SCENARIO;


CREATE TABLE TEMPERATURE_CONTROLLER_SCENARIO(
ID serial primary key, 
NON_MEDICAL_CONNECTED_OBJECT_ID integer REFERENCES NON_MEDICAL_CONNECTED_OBJECT(ID),
ROOM_ID integer REFERENCES ROOM(ID),
STATUS VARCHAR(20),
START_HOUR TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
END_HOUR TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
TEMPERATURE integer
);

CREATE TABLE SHUTTER_SCENARIO(
ID serial primary key, 
NON_MEDICAL_CONNECTED_OBJECT_ID integer REFERENCES NON_MEDICAL_CONNECTED_OBJECT(ID),
ROOM_ID integer REFERENCES ROOM(ID),
STATUS VARCHAR(20),
START_HOUR TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
POSITION VARCHAR(20)
);

