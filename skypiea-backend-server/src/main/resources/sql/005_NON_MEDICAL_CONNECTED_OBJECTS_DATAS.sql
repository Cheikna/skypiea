
--------------------------
-- New connected object --
--------------------------
insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE) values (nextval(pg_get_serial_sequence('connected_object', 'id')), 1, 'Philips', '192.168.0.16', '82:5a:be:01:01:16', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL');

insert into NON_MEDICAL_CONNECTED_OBJECT (ID,  INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) values (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'ALARM_CLOCK', (SELECT id from room WHERE door_number=102), 'point-1');

insert into OBJECT_SETTING values(nextval(pg_get_serial_sequence('object_setting', 'id')), 1, currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-09 09:00:00.000');

insert into ALARM_CLOCK values(currval(pg_get_serial_sequence('object_setting', 'id')), 1, '2019-12-09 09:00:00.000');

--------------------------
-- New connected object --
--------------------------
insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE) values (nextval(pg_get_serial_sequence('connected_object', 'id')), 1, 'Somfy', '192.168.0.17', '82:5a:be:01:01:17', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'BROKEN');

insert into NON_MEDICAL_CONNECTED_OBJECT (ID,  INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) values (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'SHUTTER', (SELECT id from room WHERE door_number=102), 'point-window-1');

insert into OBJECT_SETTING values(nextval(pg_get_serial_sequence('object_setting', 'id')), 1, currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-09 09:00:00.000');

insert into SHUTTER values(currval(pg_get_serial_sequence('object_setting', 'id')), 1, true, 50.0);


--------------------------
-- New connected object --
--------------------------
insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE) values (nextval(pg_get_serial_sequence('connected_object', 'id')), 1, 'Somfy', '192.168.0.18', '82:5a:be:01:01:18', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL');

insert into NON_MEDICAL_CONNECTED_OBJECT (ID,  INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) values (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'SHUTTER', (SELECT id from room WHERE door_number=104), 'point-window-1');

insert into OBJECT_SETTING values(nextval(pg_get_serial_sequence('object_setting', 'id')), 1, currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-09 09:00:00.000');

insert into SHUTTER values(currval(pg_get_serial_sequence('object_setting', 'id')), 1, true, 50.0);



--------------------------
-- New connected object --
--------------------------
insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE) values (nextval(pg_get_serial_sequence('connected_object', 'id')), 1, 'Somfy', '192.168.0.19', '82:5a:be:01:01:19', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL');

insert into NON_MEDICAL_CONNECTED_OBJECT (ID,  INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) values (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'SHUTTER', (SELECT id from room WHERE door_number=105), 'point-window-1');

insert into OBJECT_SETTING values(nextval(pg_get_serial_sequence('object_setting', 'id')), 1, currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-09 09:00:00.000');

insert into SHUTTER values(currval(pg_get_serial_sequence('object_setting', 'id')), 1, true, 50.0);


--------------------------
-- New connected object --
--------------------------

insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE) values (nextval(pg_get_serial_sequence('connected_object', 'id')), 1, 'Verisur', '192.168.0.20', '82:5a:be:01:01:20', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'BROKEN');

insert into NON_MEDICAL_CONNECTED_OBJECT (ID,  INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) values (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'DOOR_SENSOR', (SELECT id from room WHERE door_number=104), 'point-door-1');

insert into OBJECT_SETTING values(nextval(pg_get_serial_sequence('object_setting', 'id')), 1, currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-09 09:00:00.000');

insert into DOOR_SENSOR values(currval(pg_get_serial_sequence('object_setting', 'id')), 1, false, true);

--------------------------
-- New connected object --
--------------------------
insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE) values (nextval(pg_get_serial_sequence('connected_object', 'id')), 1, 'Verisur', '192.168.0.21', '82:5a:be:01:01:21', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL');

insert into NON_MEDICAL_CONNECTED_OBJECT (ID,  INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) values (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'DOOR_SENSOR', (SELECT id from room WHERE door_number=103), 'point-door-1');

insert into OBJECT_SETTING values(nextval(pg_get_serial_sequence('object_setting', 'id')), 1, currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-09 09:00:00.000');

insert into DOOR_SENSOR values(currval(pg_get_serial_sequence('object_setting', 'id')), 1, false, true);


--------------------------
-- New connected object --
--------------------------
insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE) values (nextval(pg_get_serial_sequence('connected_object', 'id')), 1, 'Verisur', '192.168.0.22', '82:5a:be:01:01:22', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL');

insert into NON_MEDICAL_CONNECTED_OBJECT (ID,  INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) values (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'DOOR_SENSOR', (SELECT id from room WHERE door_number=105), 'point-door-1');

insert into OBJECT_SETTING values(nextval(pg_get_serial_sequence('object_setting', 'id')), 1, currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-09 09:00:00.000');

insert into DOOR_SENSOR values(currval(pg_get_serial_sequence('object_setting', 'id')), 1, false, true);


--------------------------
-- New connected object --
--------------------------
insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE) values (nextval(pg_get_serial_sequence('connected_object', 'id')), 1, 'Adafruit', '192.168.0.23', '82:5a:be:01:01:23', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL');

insert into NON_MEDICAL_CONNECTED_OBJECT (ID,  INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) values (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'SUNSHINE_SENSOR', (SELECT id from room WHERE door_number=104), 'point-1');

insert into OBJECT_SETTING values(nextval(pg_get_serial_sequence('object_setting', 'id')), 1, currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-09 09:00:00.000');

insert into SUNSHINE_SENSOR values(currval(pg_get_serial_sequence('object_setting', 'id')), 1, 17, 10000);

--------------------------
-- New connected object --
--------------------------
insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE) values (nextval(pg_get_serial_sequence('connected_object', 'id')), 1, 'Adafruit', '192.168.0.24', '82:5a:be:01:01:24', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL');

insert into NON_MEDICAL_CONNECTED_OBJECT (ID,  INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) values (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'SUNSHINE_SENSOR', (SELECT id from room WHERE door_number=105), 'point-2');

insert into OBJECT_SETTING values(nextval(pg_get_serial_sequence('object_setting', 'id')), 1, currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-09 09:00:00.000');

insert into SUNSHINE_SENSOR values(currval(pg_get_serial_sequence('object_setting', 'id')), 1, 17, 10000);

--------------------------
-- New connected object --
--------------------------
insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE) values (nextval(pg_get_serial_sequence('connected_object', 'id')), 1, 'Adafruit', '192.168.0.25', '82:5a:be:01:01:25', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'BROKEN');

insert into NON_MEDICAL_CONNECTED_OBJECT (ID,  INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) values (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'SUNSHINE_SENSOR', (SELECT id from room WHERE door_number=106), 'point-3');

insert into OBJECT_SETTING values(nextval(pg_get_serial_sequence('object_setting', 'id')), 1, currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-09 09:00:00.000');

insert into SUNSHINE_SENSOR values(currval(pg_get_serial_sequence('object_setting', 'id')), 1, 17, 10000);


--------------------------
-- New connected object --
--------------------------
insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE) values (nextval(pg_get_serial_sequence('connected_object', 'id')), 1, 'Fibaro', '192.168.0.26', '82:5a:be:01:01:26', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL');

insert into NON_MEDICAL_CONNECTED_OBJECT (ID,  INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) values (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'SMOKE_SENSOR', (SELECT id from room WHERE door_number=106), 'point-4');

insert into OBJECT_SETTING values(nextval(pg_get_serial_sequence('object_setting', 'id')), 1, currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-09 09:00:00.000');

insert into SMOKE_SENSOR values(currval(pg_get_serial_sequence('object_setting', 'id')), 1, 300, 'LOW', 100, 348);


--------------------------
-- New connected object --
--------------------------
insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE) values (nextval(pg_get_serial_sequence('connected_object', 'id')), 1, 'Fibaro', '192.168.0.27', '82:5a:be:01:01:27', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'BROKEN');


insert into NON_MEDICAL_CONNECTED_OBJECT (ID,  INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) values (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'SMOKE_SENSOR', (SELECT id from room WHERE door_number=105), 'point-10');

insert into OBJECT_SETTING values(nextval(pg_get_serial_sequence('object_setting', 'id')), 1, currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-09 09:00:00.000');

insert into SMOKE_SENSOR values(currval(pg_get_serial_sequence('object_setting', 'id')), 1, 300, 'LOW', 100, 218);


--------------------------
-- New connected object --
--------------------------
insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE) values (nextval(pg_get_serial_sequence('connected_object', 'id')), 1, 'Fibaro', '192.168.0.28', '82:5a:be:01:01:28', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL');

insert into NON_MEDICAL_CONNECTED_OBJECT (ID,  INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) values (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'SMOKE_SENSOR', (SELECT id from room WHERE door_number=103), 'point-4');

insert into OBJECT_SETTING values(nextval(pg_get_serial_sequence('object_setting', 'id')), 1, currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-09 09:00:00.000');

insert into SMOKE_SENSOR values(currval(pg_get_serial_sequence('object_setting', 'id')), 1, 300, 'LOW', 100, 331);


--------------------------
-- New connected object --
--------------------------
insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE) values (nextval(pg_get_serial_sequence('connected_object', 'id')), 1, 'Fibaro', '192.168.0.29', '82:5a:be:01:01:29', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL');

insert into NON_MEDICAL_CONNECTED_OBJECT (ID,  INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) values (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'SMOKE_SENSOR', (SELECT id from room WHERE door_number=102), 'point-2');

insert into OBJECT_SETTING values(nextval(pg_get_serial_sequence('object_setting', 'id')), 1, currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-09 09:00:00.000');

insert into SMOKE_SENSOR values(currval(pg_get_serial_sequence('object_setting', 'id')), 1, 300, 'LOW', 100, 415);


--------------------------
-- New connected object --
--------------------------
insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE) values (nextval(pg_get_serial_sequence('connected_object', 'id')), 1, 'Leroy Merlin', '192.168.0.30', '82:5a:be:01:01:30', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'BROKEN');

insert into NON_MEDICAL_CONNECTED_OBJECT (ID,  INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) values (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'BULB', (SELECT id from room WHERE door_number=103), 'point-11');

insert into OBJECT_SETTING values(nextval(pg_get_serial_sequence('object_setting', 'id')), 1, currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-09 09:00:00.000');

insert into BULB values (currval(pg_get_serial_sequence('object_setting', 'id')), 1, '#FFBB33');


--------------------------
-- New connected object --
--------------------------
insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE) values (nextval(pg_get_serial_sequence('connected_object', 'id')), 1, 'Leroy Merlin', '192.168.0.31', '82:5a:be:01:01:31', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL');

insert into NON_MEDICAL_CONNECTED_OBJECT (ID,  INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) values (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'BULB', (SELECT id from room WHERE door_number=104), 'point-12');

insert into OBJECT_SETTING values(nextval(pg_get_serial_sequence('object_setting', 'id')), 1, currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-09 09:00:00.000');

insert into BULB values (currval(pg_get_serial_sequence('object_setting', 'id')), 1, '#FFBB33');


--------------------------
-- New connected object --
--------------------------
insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE) values (nextval(pg_get_serial_sequence('connected_object', 'id')), 1, 'Tybox', '192.168.0.32', '82:5a:be:01:01:32', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'BROKEN');

insert into NON_MEDICAL_CONNECTED_OBJECT (ID,  INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) values (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'TEMPERATURE_CONTROLLER', (SELECT id from room WHERE door_number=103), 'point-3');

insert into OBJECT_SETTING values(nextval(pg_get_serial_sequence('object_setting', 'id')), 1, currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-09 09:00:00.000');

insert into TEMPERATURE_CONTROLLER values(currval(pg_get_serial_sequence('object_setting', 'id')), 1, 20, 30, 15, 21, 25, true, true);

--------------------------
-- New connected object --
--------------------------
insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE) values (nextval(pg_get_serial_sequence('connected_object', 'id')), 1, 'Tybox', '192.168.0.33', '82:5a:be:01:01:33', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'BROKEN');

insert into NON_MEDICAL_CONNECTED_OBJECT (ID,  INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) values (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'TEMPERATURE_CONTROLLER', (SELECT id from room WHERE door_number=104), 'point-7');

insert into OBJECT_SETTING values(nextval(pg_get_serial_sequence('object_setting', 'id')), 1, currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-09 09:00:00.000');

insert into TEMPERATURE_CONTROLLER values(currval(pg_get_serial_sequence('object_setting', 'id')), 1, 20, 30, 15, 21, 24, true, true); 

------------------------------------------------------------------------
-- Update non medical connected objects which have a null SENSITIVITY --
------------------------------------------------------------------------
update CONNECTED_OBJECT set SENSITIVITY = 5 where SENSITIVITY is NULL;

