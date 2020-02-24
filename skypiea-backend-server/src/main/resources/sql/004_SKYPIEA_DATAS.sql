-- Creation of application parameters
INSERT INTO APPLICATION_PARAMETER(id, version, parameter, value) 
values (nextval(pg_get_serial_sequence('application_parameter', 'id')), 0, 'IS_ROOM_BATCH_ACTIVE', true);

INSERT INTO APPLICATION_PARAMETER(id, version, parameter, value) 
values (nextval(pg_get_serial_sequence('application_parameter', 'id')), 0, 'LAST_ROOM_BATCH_UPDATE', null);

INSERT INTO APPLICATION_PARAMETER(id, version, parameter, value) 
values (nextval(pg_get_serial_sequence('application_parameter', 'id')), 0, 'IS_MEMORY_CACHE_ACTIVE', true);

INSERT INTO APPLICATION_PARAMETER(id, version, parameter, value) 
values (nextval(pg_get_serial_sequence('application_parameter', 'id')), 0, 'LAST_MEMORY_CACHE_UPDATE', null);

-- Creation of the staff users
INSERT INTO skypiea_user (id, version, last_name, first_name, username, password, user_type, last_connection_date) 
VALUES (nextval(pg_get_serial_sequence('skypiea_user', 'id')), 1, 'staff', 'staff', 'staff', '$2a$10$6bM6UiXl9l..KndyiJh8N.9FbFJ2bPxr4jd/ChXJ9XlFGaAyuPtsm', 'STAFF', '2019-12-09 09:00:00.000');
INSERT INTO staff (id) VALUES (currval(pg_get_serial_sequence('skypiea_user', 'id')));

INSERT INTO skypiea_user (id, version, last_name, first_name, username, password, user_type, last_connection_date) 
VALUES (nextval(pg_get_serial_sequence('skypiea_user', 'id')), 1, 'admin', 'admin', 'admin', '$2a$10$lmvPZI4tTcXomFpLaCBGtuknoOktM5b/gMAkkPzxcFXVWpRiMrD46', 'STAFF', '2019-12-09 09:00:00.000');
INSERT INTO staff (id) VALUES (currval(pg_get_serial_sequence('skypiea_user', 'id')));

-- Creation of the resident and association with their rooms
-- New user with its room
INSERT INTO skypiea_user (id, version, last_name, first_name, username, password, user_type, last_connection_date) 
VALUES (nextval(pg_get_serial_sequence('skypiea_user', 'id')), 1, 'Gonzales', 'Leo', 'leo', '$2a$10$o72wE0wLkRkfgDGvI8tAU.Bys6i2A2zdetuIxdRQgLWoFkqsVNjfG', 'RESIDENT', '2019-12-09 09:00:00.000');
INSERT INTO resident (id, BIRTH_DAY,SUPERVISION) VALUES (currval(pg_get_serial_sequence('skypiea_user', 'id')), '1939-12-09 09:00:00.000','Heart Rate');
insert into room(id, version, door_number, floor, width,length, height, wing, svg_point, resident_id) 
values(nextval(pg_get_serial_sequence('room', 'id')), 1, 101, 1, 6.6, 3.0, 2.0, 'NORTH', 'room-1', currval(pg_get_serial_sequence('skypiea_user', 'id')));

INSERT INTO REAL_TIME_EVENT VALUES (nextval(pg_get_serial_sequence('real_time_event', 'id')), 0, 'MONITORING', null, 'The time is not synchronized', null, null, 'WARNING', 2);
insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY, REAL_TIME_EVENT_ID) values (nextval(pg_get_serial_sequence('connected_object', 'id')), 1, 'Halvorson', '192.168.0.1', '82:5a:be:01:01:01', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'WARNING', 5, currval(pg_get_serial_sequence('real_time_event', 'id')));
insert into NON_MEDICAL_CONNECTED_OBJECT (ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) values (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'ALARM_CLOCK', currval(pg_get_serial_sequence('room', 'id')), 'point-6');
insert into OBJECT_SETTING values(nextval(pg_get_serial_sequence('object_setting', 'id')), 1, currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-09 09:00:00.000');
insert into ALARM_CLOCK values(currval(pg_get_serial_sequence('object_setting', 'id')), 1, '2019-12-09 09:00:00.000' );

insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) values (nextval(pg_get_serial_sequence('connected_object', 'id')), 1, 'Ankunding', '192.168.0.2', '82:5a:be:01:01:02', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL', 3);
insert into NON_MEDICAL_CONNECTED_OBJECT (ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) values (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'BULB', currval(pg_get_serial_sequence('room', 'id')), 'point-9');
insert into OBJECT_SETTING values(nextval(pg_get_serial_sequence('object_setting', 'id')), 1, currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-09 09:00:00.000');
insert into BULB values (currval(pg_get_serial_sequence('object_setting', 'id')), 1, '#FF5733');

insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) values (nextval(pg_get_serial_sequence('connected_object', 'id')), 1, 'Carter', '192.168.0.3', '82:5a:be:01:01:03', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'OFF', 'OPERATIONAL', 4);
insert into NON_MEDICAL_CONNECTED_OBJECT (ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) values (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'DOOR_SENSOR', currval(pg_get_serial_sequence('room', 'id')), 'point-door-1');
insert into OBJECT_SETTING values(nextval(pg_get_serial_sequence('object_setting', 'id')), 1, currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-09 09:00:00.000');
insert into DOOR_SENSOR values(currval(pg_get_serial_sequence('object_setting', 'id')), 1, true, false);

insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) values (nextval(pg_get_serial_sequence('connected_object', 'id')), 1, 'Mills-Jenkins', '192.168.0.4', '82:5a:be:01:01:04', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'OFF', 'OPERATIONAL', 8);
insert into NON_MEDICAL_CONNECTED_OBJECT (ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) values (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'SHUTTER', currval(pg_get_serial_sequence('room', 'id')), 'point-window-1');
insert into OBJECT_SETTING values(nextval(pg_get_serial_sequence('object_setting', 'id')), 1, currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-09 09:00:00.000');
insert into SHUTTER values(currval(pg_get_serial_sequence('object_setting', 'id')), 1, true, 50.0);

insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) values (nextval(pg_get_serial_sequence('connected_object', 'id')), 1, 'Moen-Wiza', '192.168.0.5', '82:5a:be:01:01:05', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL', 5);
insert into NON_MEDICAL_CONNECTED_OBJECT (ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) values (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-10 09:00:00.000', 'SUNSHINE_SENSOR', currval(pg_get_serial_sequence('room', 'id')), 'point-2');
insert into OBJECT_SETTING values(nextval(pg_get_serial_sequence('object_setting', 'id')), 1, currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-09 09:00:00.000');
insert into SUNSHINE_SENSOR values(currval(pg_get_serial_sequence('object_setting', 'id')), 1, 17, 10000);

insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) values (nextval(pg_get_serial_sequence('connected_object', 'id')), 1, 'Trantow and Sons', '192.168.0.6', '82:5a:be:01:01:06', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'BROKEN', 6);
insert into NON_MEDICAL_CONNECTED_OBJECT (ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) values (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'TEMPERATURE_CONTROLLER', currval(pg_get_serial_sequence('room', 'id')), 'point-1');
insert into OBJECT_SETTING values(nextval(pg_get_serial_sequence('object_setting', 'id')), 1, currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-09 09:00:00.000');
insert into TEMPERATURE_CONTROLLER values(currval(pg_get_serial_sequence('object_setting', 'id')), 1, 20, 30, 15, 21, 13, true, true);

insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) values (nextval(pg_get_serial_sequence('connected_object', 'id')), 1, 'Frami Inc', '192.168.0.7', '82:5a:be:01:01:07', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'OFF', 'OPERATIONAL', 2);
insert into NON_MEDICAL_CONNECTED_OBJECT (ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) values (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-09-16 09:00:00.000', 'SMOKE_SENSOR', currval(pg_get_serial_sequence('room', 'id')), 'point-4');
insert into OBJECT_SETTING values(nextval(pg_get_serial_sequence('object_setting', 'id')), 1, currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-09 09:00:00.000');
insert into SMOKE_SENSOR values(currval(pg_get_serial_sequence('object_setting', 'id')), 1, 300, 'LOW', 100, 431);

-- New user with its room
INSERT INTO skypiea_user (id, version, last_name, first_name, username, password, user_type, last_connection_date) 
VALUES (nextval(pg_get_serial_sequence('skypiea_user', 'id')), 1, 'James', 'Gerard', 'gerard', '$2a$10$lPpeMwB/PMVTRrs1mCdQHO7o5UVHg4EZcIEWl3CtN8sMfuz6BnXZC', 'RESIDENT', '2019-12-09 09:00:00.000');
INSERT INTO resident (id, BIRTH_DAY,SUPERVISION) VALUES (currval(pg_get_serial_sequence('skypiea_user', 'id')), '1945-12-09 09:00:00.000','Blood Pressure');
insert into room(id, version, door_number, floor, width,length, height, wing, svg_point, resident_id)  
values(nextval(pg_get_serial_sequence('room', 'id')), 1, 102, 1, 6.6, 3.0, 2.0, 'NORTH', 'room-2', currval(pg_get_serial_sequence('skypiea_user', 'id')));

insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) values (nextval(pg_get_serial_sequence('connected_object', 'id')), 1, 'Ritchie', '192.168.0.8', '82:5a:be:01:01:08', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'BROKEN', 3);
insert into NON_MEDICAL_CONNECTED_OBJECT (ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) values (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-10-16 09:00:00.000', 'DOOR_SENSOR', currval(pg_get_serial_sequence('room', 'id')), 'point-door-1');
insert into OBJECT_SETTING values(nextval(pg_get_serial_sequence('object_setting', 'id')), 1, currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-09 09:00:00.000');
insert into DOOR_SENSOR values(currval(pg_get_serial_sequence('object_setting', 'id')), 1, false, true);

insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) values (nextval(pg_get_serial_sequence('connected_object', 'id')), 1, 'Kerluke LLC', '192.168.0.9', '82:5a:be:01:01:09', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'OFF', 'OPERATIONAL', 5);
insert into NON_MEDICAL_CONNECTED_OBJECT (ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) values (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'BULB', currval(pg_get_serial_sequence('room', 'id')), 'point-9');
insert into OBJECT_SETTING values(nextval(pg_get_serial_sequence('object_setting', 'id')), 1, 9, '2019-12-09 09:00:00.000');
insert into BULB values (currval(pg_get_serial_sequence('object_setting', 'id')), 1, '#FFBB33');


-- New user with its room
INSERT INTO skypiea_user (id, version, last_name, first_name, username, password, user_type, last_connection_date) 
VALUES (nextval(pg_get_serial_sequence('skypiea_user', 'id')), 1, 'Jackson', 'Fabrice', 'fabrice', '$2a$10$zcaTtMMbPLRxhnmTt2W1zujly81lwBM480aOMs.2aT1M2lketUmMu', 'RESIDENT', '2019-12-09 09:00:00.000');
INSERT INTO resident (id, BIRTH_DAY,SUPERVISION) VALUES (currval(pg_get_serial_sequence('skypiea_user', 'id')), '1942-12-09 09:00:00.000','Heart Rate');
insert into room(id, version, door_number, floor, width,length, height, wing, svg_point, resident_id)  
values(nextval(pg_get_serial_sequence('room', 'id')), 1, 103, 1, 6.6, 3.0, 2.0, 'NORTH', 'room-3', currval(pg_get_serial_sequence('skypiea_user', 'id')));

insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) values (nextval(pg_get_serial_sequence('connected_object', 'id')), 1, 'Veum Group', '192.168.0.10', '82:5a:be:01:01:10', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'BROKEN', 6);
insert into NON_MEDICAL_CONNECTED_OBJECT (ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) values (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'BULB', currval(pg_get_serial_sequence('room', 'id')), 'point-9');
insert into OBJECT_SETTING values(nextval(pg_get_serial_sequence('object_setting', 'id')), 1, currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-09 09:00:00.000');
insert into BULB values (currval(pg_get_serial_sequence('object_setting', 'id')), 1, '#33FFCA');


-- New user with its room
INSERT INTO skypiea_user (id, version, last_name, first_name, username, password, user_type, last_connection_date) 
VALUES (nextval(pg_get_serial_sequence('skypiea_user', 'id')), 1, 'Smith', 'Solange', 'solange', '$2a$10$gIG7lawIbdM7tixggaUqkeeNPX4FjGImbLgt423aZ16ML/B6IRKZS', 'RESIDENT', '2019-12-09 09:00:00.000');
INSERT INTO resident (id, BIRTH_DAY,SUPERVISION) VALUES (currval(pg_get_serial_sequence('skypiea_user', 'id')), '1940-12-09 09:00:00.000','Heart Rate');
insert into room(id, version, door_number, floor, width,length, height, wing, svg_point, resident_id)  
values(nextval(pg_get_serial_sequence('room', 'id')), 1, 104, 1, 6.6, 3.0, 2.0, 'NORTH', 'room-4', currval(pg_get_serial_sequence('skypiea_user', 'id')));

insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) values (nextval(pg_get_serial_sequence('connected_object', 'id')), 1, 'McDermott Group', '192.168.0.11', '82:5a:be:01:01:11', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'OFF', 'OPERATIONAL', 9);
insert into NON_MEDICAL_CONNECTED_OBJECT (ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) values (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'BULB', currval(pg_get_serial_sequence('room', 'id')), 'point-9');
insert into OBJECT_SETTING values(nextval(pg_get_serial_sequence('object_setting', 'id')), 1, currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-09 09:00:00.000');
insert into BULB values (currval(pg_get_serial_sequence('object_setting', 'id')), 1, '#50D612');


-- New user with its room
INSERT INTO skypiea_user (id, version, last_name, first_name, username, password, user_type, last_connection_date) 
VALUES (nextval(pg_get_serial_sequence('skypiea_user', 'id')), 1, 'Wilson', 'Catherine', 'catherine', '$2a$10$wMjZYog9XEuSXZkZKML3gumUrst2fPwrWPvDO/c9AmwctSXjelSlW', 'RESIDENT', '2019-12-09 09:00:00.000');
INSERT INTO resident (id, BIRTH_DAY,SUPERVISION) VALUES (currval(pg_get_serial_sequence('skypiea_user', 'id')), '1920-12-09 09:00:00.000','Heart Rate');
insert into room(id, version, door_number, floor, width,length, height, wing, svg_point, resident_id)  
values(nextval(pg_get_serial_sequence('room', 'id')), 1, 105, 1, 6.6, 3.0, 2.0, 'NORTH', 'room-5', currval(pg_get_serial_sequence('skypiea_user', 'id')));

insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) values (nextval(pg_get_serial_sequence('connected_object', 'id')), 1, 'Dickens', '192.168.0.12', '82:5a:be:01:01:12', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL', 4);
insert into NON_MEDICAL_CONNECTED_OBJECT (ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) values (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'BULB', currval(pg_get_serial_sequence('room', 'id')), 'point-9');
insert into OBJECT_SETTING values(nextval(pg_get_serial_sequence('object_setting', 'id')), 1, 12, '2019-12-09 09:00:00.000');
insert into BULB values (currval(pg_get_serial_sequence('object_setting', 'id')), 1, '#D364E9');


-- New user with its room
INSERT INTO skypiea_user (id, version, last_name, first_name, username, password, user_type, last_connection_date) 
VALUES (nextval(pg_get_serial_sequence('skypiea_user', 'id')), 1, 'Taylor', 'Angele', 'angele', '$2a$10$pGgbjag2kiQIgEwFcdWMLevCkcgEQCGe6.oA8JwTLtQKUoozEd.J6', 'RESIDENT', '2019-12-09 09:00:00.000');
INSERT INTO resident (id, BIRTH_DAY,SUPERVISION) VALUES (currval(pg_get_serial_sequence('skypiea_user', 'id')), '1927-12-09 09:00:00.000','Heart Rate');
insert into room(id, version, door_number, floor, width,length, height, wing, svg_point, resident_id) 
values(nextval(pg_get_serial_sequence('room', 'id')), 1, 106, 1, 6.6, 3.0, 2.0, 'NORTH', 'room-6', currval(pg_get_serial_sequence('skypiea_user', 'id')));

insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) values (nextval(pg_get_serial_sequence('connected_object', 'id')), 1, 'Grant and Sons', '192.168.0.13', '82:5a:be:01:01:13', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL', 2);
insert into NON_MEDICAL_CONNECTED_OBJECT (ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) values (currval(pg_get_serial_sequence('connected_object', 'id')), '2010-12-16 09:00:00.000', 'ALARM_CLOCK', currval(pg_get_serial_sequence('room', 'id')), 'point-6');
insert into OBJECT_SETTING values(nextval(pg_get_serial_sequence('object_setting', 'id')), 1, 13, '2019-12-09 09:00:00.000');
insert into ALARM_CLOCK values(currval(pg_get_serial_sequence('object_setting', 'id')), 1, '2019-12-16 15:00:00.000' );

insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) values (nextval(pg_get_serial_sequence('connected_object', 'id')), 1, 'Raynor-Carroll', '192.168.0.14', '82:5a:be:01:01:14', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL', 5);
insert into NON_MEDICAL_CONNECTED_OBJECT (ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) values (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'BULB', currval(pg_get_serial_sequence('room', 'id')), 'point-9');
insert into OBJECT_SETTING values(nextval(pg_get_serial_sequence('object_setting', 'id')), 1, 14, '2019-12-09 09:00:00.000');
insert into BULB values (currval(pg_get_serial_sequence('object_setting', 'id')), 1, '#FF8BC0');

insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) values (nextval(pg_get_serial_sequence('connected_object', 'id')), 1, 'McCullough-Rau', '192.168.0.15', '82:5a:be:01:01:15', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'OFF', 'OPERATIONAL', 6);
insert into NON_MEDICAL_CONNECTED_OBJECT (ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) values (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-15 09:00:00.000', 'SMOKE_SENSOR', currval(pg_get_serial_sequence('room', 'id')), 'point-10');
insert into OBJECT_SETTING values(nextval(pg_get_serial_sequence('object_setting', 'id')), 1, 15, '2019-12-09 09:00:00.000');
insert into SMOKE_SENSOR values(currval(pg_get_serial_sequence('object_setting', 'id')), 1, 300, 'LOW', 100, 355);