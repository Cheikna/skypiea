
--------------------------
-- New connected object --
--------------------------
insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE) 
values (nextval(pg_get_serial_sequence('connected_object', 'id')), 1, 'Philips', '72.135.218.212', '80:25:5a:gb:6e:e6', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL');

insert into NON_MEDICAL_CONNECTED_OBJECT (ID,  INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) 
values (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'ALARM_CLOCK', (SELECT id from room WHERE door_number=102), 'point-1');

insert into OBJECT_SETTING values(nextval(pg_get_serial_sequence('object_setting', 'id')), 1, currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-09 09:00:00.000');

insert into ALARM_CLOCK values(currval(pg_get_serial_sequence('object_setting', 'id')), 1, '2019-12-09 09:00:00.000');

--------------------------
-- New connected object --
--------------------------
insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE) 
values (nextval(pg_get_serial_sequence('connected_object', 'id')), 1, 'Somfy', '72.135.228.222', '85:25:5a:gb:6e:e6', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'BROKEN');

insert into NON_MEDICAL_CONNECTED_OBJECT (ID,  INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) 
values (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'SHUTTER', (SELECT id from room WHERE door_number=102), 'point-window-1');

insert into OBJECT_SETTING values(nextval(pg_get_serial_sequence('object_setting', 'id')), 1, currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-09 09:00:00.000');

insert into SHUTTER values(currval(pg_get_serial_sequence('object_setting', 'id')), 1, true, 50.0);


--------------------------
-- New connected object --
--------------------------
insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE) 
values (nextval(pg_get_serial_sequence('connected_object', 'id')), 1, 'Somfy', '72.135.238.212', '80:25:aa:2b:6e:e6', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL');

insert into NON_MEDICAL_CONNECTED_OBJECT (ID,  INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) 
values (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'SHUTTER', (SELECT id from room WHERE door_number=104), 'point-window-1');

insert into OBJECT_SETTING values(nextval(pg_get_serial_sequence('object_setting', 'id')), 1, currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-09 09:00:00.000');

insert into SHUTTER values(currval(pg_get_serial_sequence('object_setting', 'id')), 1, true, 50.0);



--------------------------
-- New connected object --
--------------------------
insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE) 
values (nextval(pg_get_serial_sequence('connected_object', 'id')), 1, 'Somfy', '72.135.118.212', '80:15:5a:gb:6e:e6', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL');

insert into NON_MEDICAL_CONNECTED_OBJECT (ID,  INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) 
values (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'SHUTTER', (SELECT id from room WHERE door_number=105), 'point-window-1');

insert into OBJECT_SETTING values(nextval(pg_get_serial_sequence('object_setting', 'id')), 1, currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-09 09:00:00.000');

insert into SHUTTER values(currval(pg_get_serial_sequence('object_setting', 'id')), 1, true, 50.0);


--------------------------
-- New connected object --
--------------------------

insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE) 
values (nextval(pg_get_serial_sequence('connected_object', 'id')), 1, 'Verisur', '72.135.218.102', '80:25:5a:gb:6e:20', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'BROKEN');

insert into NON_MEDICAL_CONNECTED_OBJECT (ID,  INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) 
values (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'DOOR_SENSOR', (SELECT id from room WHERE door_number=104), 'point-door-1');

insert into OBJECT_SETTING values(nextval(pg_get_serial_sequence('object_setting', 'id')), 1, currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-09 09:00:00.000');

insert into DOOR_SENSOR values(currval(pg_get_serial_sequence('object_setting', 'id')), 1, false, true);

--------------------------
-- New connected object --
--------------------------
insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE) 
values (nextval(pg_get_serial_sequence('connected_object', 'id')), 1, 'Verisur', '72.135.218.220', '80:25:5a:dg:9e:e9', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL');

insert into NON_MEDICAL_CONNECTED_OBJECT (ID,  INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) 
values (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'DOOR_SENSOR', (SELECT id from room WHERE door_number=103), 'point-door-1');

insert into OBJECT_SETTING values(nextval(pg_get_serial_sequence('object_setting', 'id')), 1, currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-09 09:00:00.000');

insert into DOOR_SENSOR values(currval(pg_get_serial_sequence('object_setting', 'id')), 1, false, true);


--------------------------
-- New connected object --
--------------------------
insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE) 
values (nextval(pg_get_serial_sequence('connected_object', 'id')), 1, 'Verisur', '72.135.218.012', '80:25:5a:gb:0e:a6', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL');

insert into NON_MEDICAL_CONNECTED_OBJECT (ID,  INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) 
values (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'DOOR_SENSOR', (SELECT id from room WHERE door_number=105), 'point-door-1');

insert into OBJECT_SETTING values(nextval(pg_get_serial_sequence('object_setting', 'id')), 1, currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-09 09:00:00.000');

insert into DOOR_SENSOR values(currval(pg_get_serial_sequence('object_setting', 'id')), 1, false, true);


--------------------------
-- New connected object --
--------------------------
insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE) 
values (nextval(pg_get_serial_sequence('connected_object', 'id')), 1, 'Adafruit', '72.135.218.232', '80:25:5a:jb:5e:56', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL');

insert into NON_MEDICAL_CONNECTED_OBJECT (ID,  INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) 
values (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'SUNSHINE_SENSOR', (SELECT id from room WHERE door_number=104), 'point-1');

insert into OBJECT_SETTING values(nextval(pg_get_serial_sequence('object_setting', 'id')), 1, currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-09 09:00:00.000');

insert into SUNSHINE_SENSOR values(currval(pg_get_serial_sequence('object_setting', 'id')), 1, 17, 10000);

--------------------------
-- New connected object --
--------------------------
insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE) 
values (nextval(pg_get_serial_sequence('connected_object', 'id')), 1, 'Adafruit', '72.135.218.242', '80:25:5a:gb:6j:e6', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL');

insert into NON_MEDICAL_CONNECTED_OBJECT (ID,  INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) 
values (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'SUNSHINE_SENSOR', (SELECT id from room WHERE door_number=105), 'point-2');

insert into OBJECT_SETTING values(nextval(pg_get_serial_sequence('object_setting', 'id')), 1, currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-09 09:00:00.000');

insert into SUNSHINE_SENSOR values(currval(pg_get_serial_sequence('object_setting', 'id')), 1, 17, 10000);

--------------------------
-- New connected object --
--------------------------
insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE) 
values (nextval(pg_get_serial_sequence('connected_object', 'id')), 1, 'Adafruit', '72.135.218.252', '80:25:5a:gb:6i:e6', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'BROKEN');

insert into NON_MEDICAL_CONNECTED_OBJECT (ID,  INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) 
values (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'SUNSHINE_SENSOR', (SELECT id from room WHERE door_number=106), 'point-3');

insert into OBJECT_SETTING values(nextval(pg_get_serial_sequence('object_setting', 'id')), 1, currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-09 09:00:00.000');

insert into SUNSHINE_SENSOR values(currval(pg_get_serial_sequence('object_setting', 'id')), 1, 17, 10000);


--------------------------
-- New connected object --
--------------------------
insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE) 
values (nextval(pg_get_serial_sequence('connected_object', 'id')), 1, 'Fibaro', '72.135.218.262', '80:25:5a:gb:6h:e6', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL');

insert into NON_MEDICAL_CONNECTED_OBJECT (ID,  INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) 
values (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'SMOKE_SENSOR', (SELECT id from room WHERE door_number=106), 'point-4');

insert into OBJECT_SETTING values(nextval(pg_get_serial_sequence('object_setting', 'id')), 1, currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-09 09:00:00.000');

insert into SMOKE_SENSOR values(currval(pg_get_serial_sequence('object_setting', 'id')), 1, 300, 'LOW');


--------------------------
-- New connected object --
--------------------------
insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE) 
values (nextval(pg_get_serial_sequence('connected_object', 'id')), 1, 'Fibaro', '72.135.218.272', '80:25:5a:gb:6e:e6', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'BROKEN');


insert into NON_MEDICAL_CONNECTED_OBJECT (ID,  INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) 
values (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'SMOKE_SENSOR', (SELECT id from room WHERE door_number=105), 'point-10');

insert into OBJECT_SETTING values(nextval(pg_get_serial_sequence('object_setting', 'id')), 1, currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-09 09:00:00.000');

insert into SMOKE_SENSOR values(currval(pg_get_serial_sequence('object_setting', 'id')), 1, 300, 'LOW');


--------------------------
-- New connected object --
--------------------------
insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE) 
values (nextval(pg_get_serial_sequence('connected_object', 'id')), 1, 'Fibaro', '72.135.218.282', '80:25:5a:gb:6d:e6', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL');

insert into NON_MEDICAL_CONNECTED_OBJECT (ID,  INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) 
values (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'SMOKE_SENSOR', (SELECT id from room WHERE door_number=103), 'point-4');

insert into OBJECT_SETTING values(nextval(pg_get_serial_sequence('object_setting', 'id')), 1, currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-09 09:00:00.000');

insert into SMOKE_SENSOR values(currval(pg_get_serial_sequence('object_setting', 'id')), 1, 300, 'LOW');


--------------------------
-- New connected object --
--------------------------
insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE) 
values (nextval(pg_get_serial_sequence('connected_object', 'id')), 1, 'Fibaro', '72.135.218.292', '80:25:5a:gb:6c:e6', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL');

insert into NON_MEDICAL_CONNECTED_OBJECT (ID,  INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) 
values (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'SMOKE_SENSOR', (SELECT id from room WHERE door_number=102), 'point-2');

insert into OBJECT_SETTING values(nextval(pg_get_serial_sequence('object_setting', 'id')), 1, currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-09 09:00:00.000');

insert into SMOKE_SENSOR values(currval(pg_get_serial_sequence('object_setting', 'id')), 1, 300, 'LOW');


--------------------------
-- New connected object --
--------------------------
insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE) 
values (nextval(pg_get_serial_sequence('connected_object', 'id')), 1, 'Leroy Merlin', '72.135.218.213', '80:25:5a:gb:6b:e6', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'BROKEN');

insert into NON_MEDICAL_CONNECTED_OBJECT (ID,  INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) 
values (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'BULB', (SELECT id from room WHERE door_number=103), 'point-11');

insert into OBJECT_SETTING values(nextval(pg_get_serial_sequence('object_setting', 'id')), 1, currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-09 09:00:00.000');

insert into BULB values (currval(pg_get_serial_sequence('object_setting', 'id')), 1, '#FFBB33');


--------------------------
-- New connected object --
--------------------------
insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE) 
values (nextval(pg_get_serial_sequence('connected_object', 'id')), 1, 'Leroy Merlin', '72.135.218.214', '80:25:5a:gb:6a:e6', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL');

insert into NON_MEDICAL_CONNECTED_OBJECT (ID,  INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) 
values (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'BULB', (SELECT id from room WHERE door_number=104), 'point-12');

insert into OBJECT_SETTING values(nextval(pg_get_serial_sequence('object_setting', 'id')), 1, currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-09 09:00:00.000');

insert into BULB values (currval(pg_get_serial_sequence('object_setting', 'id')), 1, '#FFBB33');


--------------------------
-- New connected object --
--------------------------
insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE) 
values (nextval(pg_get_serial_sequence('connected_object', 'id')), 1, 'Tybox', '72.135.218.215', '80:25:5a:gb:6g:e6', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'BROKEN');

insert into NON_MEDICAL_CONNECTED_OBJECT (ID,  INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) 
values (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'TEMPERATURE_CONTROLLER', (SELECT id from room WHERE door_number=103), 'point-3');

insert into OBJECT_SETTING values(nextval(pg_get_serial_sequence('object_setting', 'id')), 1, currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-09 09:00:00.000');

insert into TEMPERATURE_CONTROLLER 
values(currval(pg_get_serial_sequence('object_setting', 'id')), 1, 20, 30, 15, 21, 25, true, true);

--------------------------
-- New connected object --
--------------------------
insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE) 
values (nextval(pg_get_serial_sequence('connected_object', 'id')), 1, 'Tybox', '72.135.218.216', '80:25:5a:gb:8f:e6', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'BROKEN');

insert into NON_MEDICAL_CONNECTED_OBJECT (ID,  INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) 
values (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'TEMPERATURE_CONTROLLER', (SELECT id from room WHERE door_number=104), 'point-7');

insert into OBJECT_SETTING values(nextval(pg_get_serial_sequence('object_setting', 'id')), 1, currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-09 09:00:00.000');

insert into TEMPERATURE_CONTROLLER 
values(currval(pg_get_serial_sequence('object_setting', 'id')), 1, 20, 30, 15, 21, 24, true, true); 