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
INSERT INTO resident (id, BIRTH_DAY) VALUES (currval(pg_get_serial_sequence('skypiea_user', 'id')), '1939-12-09 09:00:00.000');
insert into room(id, version, door_number, floor, width,length, height, wing, svg_point, resident_id) 
values(nextval(pg_get_serial_sequence('room', 'id')), 1, 101, 1, 6.6, 3.0, 2.0, 'NORTH', 'room-1', currval(pg_get_serial_sequence('skypiea_user', 'id')));

INSERT INTO REAL_TIME_EVENT VALUES (nextval(pg_get_serial_sequence('real_time_event', 'id')), 0, 'MONITORING', null, 'The time is not synchronized', null, null, 'WARNING', 2);
insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY, REAL_TIME_EVENT_ID) values (nextval(pg_get_serial_sequence('connected_object', 'id')), 1, 'Halvorson, Macejkovic and Reynolds', '194.188.185.80', '8b:c5:59:5b:65:f3', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'WARNING', 5, currval(pg_get_serial_sequence('real_time_event', 'id')));
insert into NON_MEDICAL_CONNECTED_OBJECT (ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) values (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'ALARM_CLOCK', currval(pg_get_serial_sequence('room', 'id')), 'point-6');
insert into OBJECT_SETTING values(nextval(pg_get_serial_sequence('object_setting', 'id')), 1, currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-09 09:00:00.000');
insert into ALARM_CLOCK values(currval(pg_get_serial_sequence('object_setting', 'id')), 1, '2019-12-09 09:00:00.000' );

insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) values (nextval(pg_get_serial_sequence('connected_object', 'id')), 1, 'Ankunding, Goldner and Vandervort', '181.30.74.17', 'b3:68:2c:47:b7:53', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL', 3);
insert into NON_MEDICAL_CONNECTED_OBJECT (ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) values (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'BULB', currval(pg_get_serial_sequence('room', 'id')), 'point-9');
insert into OBJECT_SETTING values(nextval(pg_get_serial_sequence('object_setting', 'id')), 1, currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-09 09:00:00.000');
insert into BULB values (currval(pg_get_serial_sequence('object_setting', 'id')), 1, '#FF5733');

insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) values (nextval(pg_get_serial_sequence('connected_object', 'id')), 1, 'Carter, Lehner and Pollich', '106.90.181.128', 'be:dd:72:48:37:4e', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'OFF', 'OPERATIONAL', 4);
insert into NON_MEDICAL_CONNECTED_OBJECT (ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) values (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'DOOR_SENSOR', currval(pg_get_serial_sequence('room', 'id')), 'point-door-1');
insert into OBJECT_SETTING values(nextval(pg_get_serial_sequence('object_setting', 'id')), 1, currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-09 09:00:00.000');
insert into DOOR_SENSOR values(currval(pg_get_serial_sequence('object_setting', 'id')), 1, true, false);

insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) values (nextval(pg_get_serial_sequence('connected_object', 'id')), 1, 'Mills-Jenkins', '5.48.219.39', '48:09:ec:1d:16:d9', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'OFF', 'OPERATIONAL', 8);
insert into NON_MEDICAL_CONNECTED_OBJECT (ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) values (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'SHUTTER', currval(pg_get_serial_sequence('room', 'id')), 'point-window-1');
insert into OBJECT_SETTING values(nextval(pg_get_serial_sequence('object_setting', 'id')), 1, currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-09 09:00:00.000');
insert into SHUTTER values(currval(pg_get_serial_sequence('object_setting', 'id')), 1, true, 50.0);

insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) values (nextval(pg_get_serial_sequence('connected_object', 'id')), 1, 'Moen-Wiza', '237.119.105.99', 'af:1c:a6:b6:e0:86', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL', 5);
insert into NON_MEDICAL_CONNECTED_OBJECT (ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) values (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-10 09:00:00.000', 'SUNSHINE_SENSOR', currval(pg_get_serial_sequence('room', 'id')), 'point-2');
insert into OBJECT_SETTING values(nextval(pg_get_serial_sequence('object_setting', 'id')), 1, currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-09 09:00:00.000');
insert into SUNSHINE_SENSOR values(currval(pg_get_serial_sequence('object_setting', 'id')), 1, 17, 10000);

insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) values (nextval(pg_get_serial_sequence('connected_object', 'id')), 1, 'Trantow and Sons', '210.41.203.247', 'ca:fc:9d:d4:fc:9e', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'BROKEN', 6);
insert into NON_MEDICAL_CONNECTED_OBJECT (ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) values (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'TEMPERATURE_CONTROLLER', currval(pg_get_serial_sequence('room', 'id')), 'point-1');
insert into OBJECT_SETTING values(nextval(pg_get_serial_sequence('object_setting', 'id')), 1, currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-09 09:00:00.000');
insert into TEMPERATURE_CONTROLLER values(currval(pg_get_serial_sequence('object_setting', 'id')), 1, 20, 30, 15, 21, 13, true, true);

insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) values (nextval(pg_get_serial_sequence('connected_object', 'id')), 1, 'Frami Inc', '209.55.115.47', 'b9:b8:da:9a:56:04', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'OFF', 'OPERATIONAL', 2);
insert into NON_MEDICAL_CONNECTED_OBJECT (ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) values (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-09-16 09:00:00.000', 'SMOKE_SENSOR', currval(pg_get_serial_sequence('room', 'id')), 'point-4');
insert into OBJECT_SETTING values(nextval(pg_get_serial_sequence('object_setting', 'id')), 1, currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-09 09:00:00.000');
insert into SMOKE_SENSOR values(currval(pg_get_serial_sequence('object_setting', 'id')), 1, 300, 'LOW', 100, 431);

-- New user with its room
INSERT INTO skypiea_user (id, version, last_name, first_name, username, password, user_type, last_connection_date) 
VALUES (nextval(pg_get_serial_sequence('skypiea_user', 'id')), 1, 'James', 'Gerard', 'gerard', '$2a$10$lPpeMwB/PMVTRrs1mCdQHO7o5UVHg4EZcIEWl3CtN8sMfuz6BnXZC', 'RESIDENT', '2019-12-09 09:00:00.000');
INSERT INTO resident (id, BIRTH_DAY) VALUES (currval(pg_get_serial_sequence('skypiea_user', 'id')), '1945-12-09 09:00:00.000');
insert into room(id, version, door_number, floor, width,length, height, wing, svg_point, resident_id)  
values(nextval(pg_get_serial_sequence('room', 'id')), 1, 102, 1, 6.6, 3.0, 2.0, 'NORTH', 'room-2', currval(pg_get_serial_sequence('skypiea_user', 'id')));

insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) values (nextval(pg_get_serial_sequence('connected_object', 'id')), 1, 'Ritchie, Leffler and Runolfsson', '82.7.210.60', '3b:9d:ab:48:f2:ee', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'BROKEN', 3);
insert into NON_MEDICAL_CONNECTED_OBJECT (ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) values (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-10-16 09:00:00.000', 'DOOR_SENSOR', currval(pg_get_serial_sequence('room', 'id')), 'point-door-1');
insert into OBJECT_SETTING values(nextval(pg_get_serial_sequence('object_setting', 'id')), 1, currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-09 09:00:00.000');
insert into DOOR_SENSOR values(currval(pg_get_serial_sequence('object_setting', 'id')), 1, false, true);

insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) values (nextval(pg_get_serial_sequence('connected_object', 'id')), 1, 'Kerluke LLC', '228.42.238.16', '6e:c9:eb:ff:74:b4', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'OFF', 'OPERATIONAL', 5);
insert into NON_MEDICAL_CONNECTED_OBJECT (ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) values (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'BULB', currval(pg_get_serial_sequence('room', 'id')), 'point-9');
insert into OBJECT_SETTING values(nextval(pg_get_serial_sequence('object_setting', 'id')), 1, 9, '2019-12-09 09:00:00.000');
insert into BULB values (currval(pg_get_serial_sequence('object_setting', 'id')), 1, '#FFBB33');


-- New user with its room
INSERT INTO skypiea_user (id, version, last_name, first_name, username, password, user_type, last_connection_date) 
VALUES (nextval(pg_get_serial_sequence('skypiea_user', 'id')), 1, 'Jackson', 'Fabrice', 'fabrice', '$2a$10$zcaTtMMbPLRxhnmTt2W1zujly81lwBM480aOMs.2aT1M2lketUmMu', 'RESIDENT', '2019-12-09 09:00:00.000');
INSERT INTO resident (id, BIRTH_DAY) VALUES (currval(pg_get_serial_sequence('skypiea_user', 'id')), '1942-12-09 09:00:00.000');
insert into room(id, version, door_number, floor, width,length, height, wing, svg_point, resident_id)  
values(nextval(pg_get_serial_sequence('room', 'id')), 1, 103, 1, 6.6, 3.0, 2.0, 'NORTH', 'room-3', currval(pg_get_serial_sequence('skypiea_user', 'id')));

insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) values (nextval(pg_get_serial_sequence('connected_object', 'id')), 1, 'Veum Group', '240.224.0.140', '58:81:dd:18:22:f7', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'BROKEN', 6);
insert into NON_MEDICAL_CONNECTED_OBJECT (ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) values (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'BULB', currval(pg_get_serial_sequence('room', 'id')), 'point-9');
insert into OBJECT_SETTING values(nextval(pg_get_serial_sequence('object_setting', 'id')), 1, currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-09 09:00:00.000');
insert into BULB values (currval(pg_get_serial_sequence('object_setting', 'id')), 1, '#33FFCA');


-- New user with its room
INSERT INTO skypiea_user (id, version, last_name, first_name, username, password, user_type, last_connection_date) 
VALUES (nextval(pg_get_serial_sequence('skypiea_user', 'id')), 1, 'Smith', 'Solange', 'solange', '$2a$10$gIG7lawIbdM7tixggaUqkeeNPX4FjGImbLgt423aZ16ML/B6IRKZS', 'RESIDENT', '2019-12-09 09:00:00.000');
INSERT INTO resident (id, BIRTH_DAY) VALUES (currval(pg_get_serial_sequence('skypiea_user', 'id')), '1940-12-09 09:00:00.000');
insert into room(id, version, door_number, floor, width,length, height, wing, svg_point, resident_id)  
values(nextval(pg_get_serial_sequence('room', 'id')), 1, 104, 1, 6.6, 3.0, 2.0, 'NORTH', 'room-4', currval(pg_get_serial_sequence('skypiea_user', 'id')));

insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) values (nextval(pg_get_serial_sequence('connected_object', 'id')), 1, 'McDermott Group', '216.248.249.118', '23:4d:61:ea:f4:ac', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'OFF', 'OPERATIONAL', 9);
insert into NON_MEDICAL_CONNECTED_OBJECT (ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) values (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'BULB', currval(pg_get_serial_sequence('room', 'id')), 'point-9');
insert into OBJECT_SETTING values(nextval(pg_get_serial_sequence('object_setting', 'id')), 1, currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-09 09:00:00.000');
insert into BULB values (currval(pg_get_serial_sequence('object_setting', 'id')), 1, '#50D612');


-- New user with its room
INSERT INTO skypiea_user (id, version, last_name, first_name, username, password, user_type, last_connection_date) 
VALUES (nextval(pg_get_serial_sequence('skypiea_user', 'id')), 1, 'Wilson', 'Catherine', 'catherine', '$2a$10$wMjZYog9XEuSXZkZKML3gumUrst2fPwrWPvDO/c9AmwctSXjelSlW', 'RESIDENT', '2019-12-09 09:00:00.000');
INSERT INTO resident (id, BIRTH_DAY) VALUES (currval(pg_get_serial_sequence('skypiea_user', 'id')), '1920-12-09 09:00:00.000');
insert into room(id, version, door_number, floor, width,length, height, wing, svg_point, resident_id)  
values(nextval(pg_get_serial_sequence('room', 'id')), 1, 105, 1, 6.6, 3.0, 2.0, 'NORTH', 'room-5', currval(pg_get_serial_sequence('skypiea_user', 'id')));

insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) values (nextval(pg_get_serial_sequence('connected_object', 'id')), 1, 'Dickens, Marquardt and Balistreri', '59.199.158.251', 'ab:45:5d:1d:12:b1', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL', 4);
insert into NON_MEDICAL_CONNECTED_OBJECT (ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) values (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'BULB', currval(pg_get_serial_sequence('room', 'id')), 'point-9');
insert into OBJECT_SETTING values(nextval(pg_get_serial_sequence('object_setting', 'id')), 1, 12, '2019-12-09 09:00:00.000');
insert into BULB values (currval(pg_get_serial_sequence('object_setting', 'id')), 1, '#D364E9');


-- New user with its room
INSERT INTO skypiea_user (id, version, last_name, first_name, username, password, user_type, last_connection_date) 
VALUES (nextval(pg_get_serial_sequence('skypiea_user', 'id')), 1, 'Taylor', 'Angele', 'angele', '$2a$10$pGgbjag2kiQIgEwFcdWMLevCkcgEQCGe6.oA8JwTLtQKUoozEd.J6', 'RESIDENT', '2019-12-09 09:00:00.000');
INSERT INTO resident (id, BIRTH_DAY) VALUES (currval(pg_get_serial_sequence('skypiea_user', 'id')), '1927-12-09 09:00:00.000');
insert into room(id, version, door_number, floor, width,length, height, wing, svg_point, resident_id) 
values(nextval(pg_get_serial_sequence('room', 'id')), 1, 106, 1, 6.6, 3.0, 2.0, 'NORTH', 'room-6', currval(pg_get_serial_sequence('skypiea_user', 'id')));

insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) values (nextval(pg_get_serial_sequence('connected_object', 'id')), 1, 'Grant and Sons', '162.174.47.187', 'bc:d8:e5:dd:0c:54', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL', 2);
insert into NON_MEDICAL_CONNECTED_OBJECT (ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) values (currval(pg_get_serial_sequence('connected_object', 'id')), '2010-12-16 09:00:00.000', 'ALARM_CLOCK', currval(pg_get_serial_sequence('room', 'id')), 'point-6');
insert into OBJECT_SETTING values(nextval(pg_get_serial_sequence('object_setting', 'id')), 1, 13, '2019-12-09 09:00:00.000');
insert into ALARM_CLOCK values(currval(pg_get_serial_sequence('object_setting', 'id')), 1, '2019-12-16 15:00:00.000' );

insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) values (nextval(pg_get_serial_sequence('connected_object', 'id')), 1, 'Raynor-Carroll', '200.68.131.65', '01:aa:5d:89:c9:3a', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL', 5);
insert into NON_MEDICAL_CONNECTED_OBJECT (ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) values (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'BULB', currval(pg_get_serial_sequence('room', 'id')), 'point-9');
insert into OBJECT_SETTING values(nextval(pg_get_serial_sequence('object_setting', 'id')), 1, 14, '2019-12-09 09:00:00.000');
insert into BULB values (currval(pg_get_serial_sequence('object_setting', 'id')), 1, '#FF8BC0');

insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) values (nextval(pg_get_serial_sequence('connected_object', 'id')), 1, 'McCullough-Rau', '72.135.218.203', '80:25:5a:fb:6e:e8', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'OFF', 'OPERATIONAL', 6);
insert into NON_MEDICAL_CONNECTED_OBJECT (ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) values (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-15 09:00:00.000', 'SMOKE_SENSOR', currval(pg_get_serial_sequence('room', 'id')), 'point-10');
insert into OBJECT_SETTING values(nextval(pg_get_serial_sequence('object_setting', 'id')), 1, 15, '2019-12-09 09:00:00.000');
insert into SMOKE_SENSOR values(currval(pg_get_serial_sequence('object_setting', 'id')), 1, 300, 'LOW', 100, 355);