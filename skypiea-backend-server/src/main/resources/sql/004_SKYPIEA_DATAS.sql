-- Creation of rooms
insert into room(id, version, door_number, floor, width,length, height, wing, svg_point, resident_id) 
values(1, 1, 101, 1, 6.6, 3.0, 2.0, 'NORTH', 'room-1', 3);

insert into room(id, version, door_number, floor, width,length, height, wing, svg_point, resident_id)  
values(2, 1, 102, 1, 6.6, 3.0, 2.0, 'NORTH', 'room-2', 4);

insert into room(id, version, door_number, floor, width,length, height, wing, svg_point, resident_id)  
values(3, 1, 103, 1, 6.6, 3.0, 2.0, 'NORTH', 'room-3', 5);

insert into room(id, version, door_number, floor, width,length, height, wing, svg_point, resident_id)  
values(4, 1, 104, 1, 6.6, 3.0, 2.0, 'NORTH', 'room-4', 6);

insert into room(id, version, door_number, floor, width,length, height, wing, svg_point, resident_id)  
values(5, 1, 105, 1, 6.6, 3.0, 2.0, 'NORTH', 'room-5', 7);

insert into room(id, version, door_number, floor, width,length, height, wing, svg_point, resident_id) 
values(6, 1, 106, 1, 6.6, 3.0, 2.0, 'NORTH', 'room-6', 8);

-- Creation of connected_object
insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE) values (1, 1, 'Halvorson, Macejkovic and Reynolds', '194.188.185.80', '8b:c5:59:5b:65:f3', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'BROKEN');
insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE) values (2, 1, 'Ankunding, Goldner and Vandervort', '181.30.74.17', 'b3:68:2c:47:b7:53', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL');
insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE) values (3, 1, 'Carter, Lehner and Pollich', '106.90.181.128', 'be:dd:72:48:37:4e', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'OFF', 'OPERATIONAL');
insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE) values (4, 1, 'Mills-Jenkins', '5.48.219.39', '48:09:ec:1d:16:d9', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'OFF', 'OPERATIONAL');
insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE) values (5, 1, 'Moen-Wiza', '237.119.105.99', 'af:1c:a6:b6:e0:86', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL');
insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE) values (6, 1, 'Trantow and Sons', '210.41.203.247', 'ca:fc:9d:d4:fc:9e', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'BROKEN');
insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE) values (7, 1, 'Frami Inc', '209.55.115.47', 'b9:b8:da:9a:56:04', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'OFF', 'OPERATIONAL');
insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE) values (8, 1, 'Ritchie, Leffler and Runolfsson', '82.7.210.60', '3b:9d:ab:48:f2:ee', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'BROKEN');
insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE) values (9, 1, 'Kerluke LLC', '228.42.238.16', '6e:c9:eb:ff:74:b4', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'OFF', 'OPERATIONAL');
insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE) values (10, 1, 'Veum Group', '240.224.0.140', '58:81:dd:18:22:f7', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'BROKEN');
insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE) values (11, 1, 'McDermott Group', '216.248.249.118', '23:4d:61:ea:f4:ac', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'OFF', 'OPERATIONAL');
insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE) values (12, 1, 'Dickens, Marquardt and Balistreri', '59.199.158.251', 'ab:45:5d:1d:12:b1', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL');
insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE) values (13, 1, 'Grant and Sons', '162.174.47.187', 'bc:d8:e5:dd:0c:54', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL');
insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE) values (14, 1, 'Raynor-Carroll', '200.68.131.65', '01:aa:5d:89:c9:3a', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL');
insert into CONNECTED_OBJECT (ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE) values (15, 1, 'McCullough-Rau', '72.135.218.203', '80:25:5a:fb:6e:e8', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'OFF', 'OPERATIONAL');

-- Creation of non_medical_connected_object
insert into NON_MEDICAL_CONNECTED_OBJECT (ID, CONNECTED_OBJECT_ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) values (1, 1, '2019-12-16 09:00:00.000', 'ALARM_CLOCK', 1, 'point-6');
insert into NON_MEDICAL_CONNECTED_OBJECT (ID, CONNECTED_OBJECT_ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) values (2, 2, '2019-12-16 09:00:00.000', 'BULB', 1, 'point-9');
insert into NON_MEDICAL_CONNECTED_OBJECT (ID, CONNECTED_OBJECT_ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) values (3, 3, '2019-12-16 09:00:00.000', 'DOOR_SENSOR', 1, 'point-door-1');
insert into NON_MEDICAL_CONNECTED_OBJECT (ID, CONNECTED_OBJECT_ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) values (4, 4, '2019-12-16 09:00:00.000', 'SHUTTER', 1, 'point-window-1');
insert into NON_MEDICAL_CONNECTED_OBJECT (ID, CONNECTED_OBJECT_ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) values (5, 5, '2019-12-10 09:00:00.000', 'SUNSHINE_SENSOR', 1, 'point-2');
insert into NON_MEDICAL_CONNECTED_OBJECT (ID, CONNECTED_OBJECT_ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) values (6, 6, '2019-12-16 09:00:00.000', 'TEMPERATURE_CONTROLLER', 1, 'point-1');
insert into NON_MEDICAL_CONNECTED_OBJECT (ID, CONNECTED_OBJECT_ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) values (7, 7, '2019-09-16 09:00:00.000', 'SMOKE_SENSOR', 1, 'point-4');
insert into NON_MEDICAL_CONNECTED_OBJECT (ID, CONNECTED_OBJECT_ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) values (8, 8, '2019-10-16 09:00:00.000', 'DOOR_SENSOR', 2, 'point-door-1');
insert into NON_MEDICAL_CONNECTED_OBJECT (ID, CONNECTED_OBJECT_ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) values (9, 9, '2019-12-16 09:00:00.000', 'BULB', 2, 'point-9');
insert into NON_MEDICAL_CONNECTED_OBJECT (ID, CONNECTED_OBJECT_ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) values (10, 10, '2019-12-16 09:00:00.000', 'BULB', 3, 'point-9');
insert into NON_MEDICAL_CONNECTED_OBJECT (ID, CONNECTED_OBJECT_ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) values (11, 11, '2019-12-16 09:00:00.000', 'BULB', 4, 'point-9');
insert into NON_MEDICAL_CONNECTED_OBJECT (ID, CONNECTED_OBJECT_ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) values (12, 12, '2019-12-16 09:00:00.000', 'BULB', 5, 'point-9');
insert into NON_MEDICAL_CONNECTED_OBJECT (ID, CONNECTED_OBJECT_ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) values (13, 13, '2010-12-16 09:00:00.000', 'ALARM_CLOCK', 6, 'point-6');
insert into NON_MEDICAL_CONNECTED_OBJECT (ID, CONNECTED_OBJECT_ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) values (14, 14, '2019-12-16 09:00:00.000', 'BULB', 6, 'point-9');
insert into NON_MEDICAL_CONNECTED_OBJECT (ID, CONNECTED_OBJECT_ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) values (15, 15, '2019-12-15 09:00:00.000', 'SMOKE_SENSOR', 6, 'point-10');


-- Creation of the different connected objects type
insert into ALARM_CLOCK values(1,1, '2019-12-09 09:00:00.000' , true);
insert into ALARM_CLOCK values(2,13, '2019-12-16 15:00:00.000' , true);

insert into BULB values (1, 2, '#FF5733', true);
insert into BULB values (2, 9, '#FFBB33', true);
insert into BULB values (3, 10, '#33FFCA', true);
insert into BULB values (4, 11, '#50D612', true);
insert into BULB values (5, 12, '#D364E9', true);
insert into BULB values (6, 14, '#FF8BC0', true);

insert into DOOR_SENSOR values(1, 3, true, false, true);
insert into DOOR_SENSOR values(2, 8, false, true, true);

insert into SHUTTER values(1, 4, true, 50.0, true);

insert into SUNSHINE_SENSOR values(1, 5, 17, 10000, true);

insert into TEMPERATURE_CONTROLLER values(1, 6, 20, 30, 15, 21, 13, true, true, true);

insert into SMOKE_SENSOR values(1, 7, 300, 'LOW', true);
insert into SMOKE_SENSOR values(2, 15, 300, 'LOW', true);

-- Creation of the users
INSERT INTO skypiea_user (id, version, last_name, first_name, username, password, user_type, last_connection_date) 
VALUES (1, 1, 'staff', 'staff', 'staff', '$2a$10$6bM6UiXl9l..KndyiJh8N.9FbFJ2bPxr4jd/ChXJ9XlFGaAyuPtsm', 'STAFF', '2019-12-09 09:00:00.000');

INSERT INTO skypiea_user (id, version, last_name, first_name, username, password, user_type, last_connection_date) 
VALUES (2, 1, 'admin', 'admin', 'admin', '$2a$10$lmvPZI4tTcXomFpLaCBGtuknoOktM5b/gMAkkPzxcFXVWpRiMrD46', 'STAFF', '2019-12-09 09:00:00.000');

INSERT INTO skypiea_user (id, version, last_name, first_name, username, password, user_type, last_connection_date) 
VALUES (3, 1, 'Gonzales', 'Leo', 'leo', '$2a$10$o72wE0wLkRkfgDGvI8tAU.Bys6i2A2zdetuIxdRQgLWoFkqsVNjfG', 'RESIDENT', '2019-12-09 09:00:00.000');

INSERT INTO skypiea_user (id, version, last_name, first_name, username, password, user_type, last_connection_date) 
VALUES (4, 1, 'James', 'Gerard', 'gerard', '$2a$10$lPpeMwB/PMVTRrs1mCdQHO7o5UVHg4EZcIEWl3CtN8sMfuz6BnXZC', 'RESIDENT', '2019-12-09 09:00:00.000');

INSERT INTO skypiea_user (id, version, last_name, first_name, username, password, user_type, last_connection_date) 
VALUES (5, 1, 'Jackson', 'Fabrice', 'fabrice', '$2a$10$zcaTtMMbPLRxhnmTt2W1zujly81lwBM480aOMs.2aT1M2lketUmMu', 'RESIDENT', '2019-12-09 09:00:00.000');

INSERT INTO skypiea_user (id, version, last_name, first_name, username, password, user_type, last_connection_date) 
VALUES (6, 1, 'Smith', 'Solange', 'solange', '$2a$10$gIG7lawIbdM7tixggaUqkeeNPX4FjGImbLgt423aZ16ML/B6IRKZS', 'RESIDENT', '2019-12-09 09:00:00.000');

INSERT INTO skypiea_user (id, version, last_name, first_name, username, password, user_type, last_connection_date) 
VALUES (7, 1, 'Wilson', 'Catherine', 'catherine', '$2a$10$wMjZYog9XEuSXZkZKML3gumUrst2fPwrWPvDO/c9AmwctSXjelSlW', 'RESIDENT', '2019-12-09 09:00:00.000');

INSERT INTO skypiea_user (id, version, last_name, first_name, username, password, user_type, last_connection_date) 
VALUES (8, 1, 'Taylor', 'Angele', 'angele', '$2a$10$pGgbjag2kiQIgEwFcdWMLevCkcgEQCGe6.oA8JwTLtQKUoozEd.J6', 'RESIDENT', '2019-12-09 09:00:00.000');


-- Creation of the staff members
INSERT INTO staff (id, user_id) VALUES (1, 1);
INSERT INTO staff (id, user_id) VALUES (2, 2);

-- Creation of the residents
INSERT INTO resident (id, user_id, BIRTH_DAY) VALUES (1, 3, '1939-12-09 09:00:00.000');
INSERT INTO resident (id, user_id, BIRTH_DAY) VALUES (2, 4, '1945-12-09 09:00:00.000');
INSERT INTO resident (id, user_id, BIRTH_DAY) VALUES (3, 5, '1942-12-09 09:00:00.000');
INSERT INTO resident (id, user_id, BIRTH_DAY) VALUES (4, 6, '1940-12-09 09:00:00.000');
INSERT INTO resident (id, user_id, BIRTH_DAY) VALUES (5, 7, '1920-12-09 09:00:00.000');
INSERT INTO resident (id, user_id, BIRTH_DAY) VALUES (6, 8, '1927-12-09 09:00:00.000');