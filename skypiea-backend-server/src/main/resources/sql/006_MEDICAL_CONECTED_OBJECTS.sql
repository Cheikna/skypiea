
CREATE TABLE MEDICAL_CONNECTED_OBJECT(
ID serial primary key REFERENCES CONNECTED_OBJECT(ID),
RESIDENT_ID integer REFERENCES RESIDENT(ID)
);

CREATE TABLE HEALTH_CONTROL_HISTORY(
ID serial primary key,
VERSION integer,
MEDICAL_OBJECT_TYPE varchar(50),
SAVING_DATE TIMESTAMP,
VALUE NUMERIC,
EXTRA_VALUE NUMERIC,
MEDICAL_CONNECTED_OBJECT_ID integer REFERENCES MEDICAL_CONNECTED_OBJECT(ID)
);

insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE)
values (nextval(pg_get_serial_sequence('connected_object', 'id')), 1, 'Somfy', '72.135.238.212', '80:25:aa:2b:6e:e6', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL');

insert into MEDICAL_CONNECTED_OBJECT values (currval(pg_get_serial_sequence('connected_object', 'id')),(select ID from SKYPIEA_USER where first_name = 'Leo'));

insert into HEALTH_CONTROL_HISTORY values (nextval(pg_get_serial_sequence('health_control_history','id')),0,'HEART_RATE','2019-12-16 09:00:00.000',78,0,currval(pg_get_serial_sequence('connected_object', 'id')));
insert into HEALTH_CONTROL_HISTORY values (nextval(pg_get_serial_sequence('health_control_history','id')),0,'HEART_RATE','2019-12-16 09:00:00.000',78,0,currval(pg_get_serial_sequence('connected_object', 'id')));



