---------------------------------------------------------------------
------------------- ROOM N°107---------------------------------------
---------- FOR CORBYN Arantxa------------------------------------
---------------------------------------------------------------------
INSERT INTO SKYPIEA_USER(id, version, last_name, first_name, username, password, user_type, last_connection_date) VALUES (nextval(pg_get_serial_sequence('skypiea_user', 'id')), 0, 'Corbyn', 'Arantxa', 'arantxa', '$2a$10$dDdfMatj1MEKuw1wVhIzAuVy7nRjMaf9n4ymJ4SFc7OELs3.rtILa', 'RESIDENT', '2020-01-01 12:00:00.000');
INSERT INTO RESIDENT(id, birth_day) VALUES (currval(pg_get_serial_sequence('skypiea_user', 'id')), '1939-12-09 09:00:00.000');
INSERT INTO ROOM(id, version, door_number, floor, width,length, height, wing, svg_point, resident_id) VALUES (nextval(pg_get_serial_sequence('room', 'id')), 0, 107, 1, 6.6, 3.0, 2.0, 'NORTH', 'room-7', currval(pg_get_serial_sequence('skypiea_user', 'id')));
---------------GENERATION OF : TEMPERATURE_CONTROLLER --------------

INSERT INTO CONNECTED_OBJECT(ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) VALUES (nextval(pg_get_serial_sequence('connected_object', 'id')), 0, 'Shandora', '192.168.0.16', '82:5a:be:01:01:16', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL', 3);
INSERT INTO NON_MEDICAL_CONNECTED_OBJECT(ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'TEMPERATURE_CONTROLLER', currval(pg_get_serial_sequence('room', 'id')), 'point-12');
--------------- SETTINGS/CONFIGURATION ------------------
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 01:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 19, 17, false, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 03:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 17, 17, false, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 04:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 13, 15, false, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 06:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 12, 18, false, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-02 00:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 21, 12, true, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-02 02:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 15, 15, true, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-02 04:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 18, 20, false, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-02 06:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 13, 22, false, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 00:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 19, 18, true, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 02:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 21, 19, false, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 04:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 12, 12, true, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 06:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 16, 20, true, true);
--------------- EVENTS ------------------
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 02:00:00.0', 'The temperature is too low', '2020-01-01 02:05:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 04:05:00.0', 'The temperature is too low', '2020-01-01 04:14:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 06:14:00.0', 'The temperature is too low', '2020-01-01 06:22:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 08:22:00.0', 'Check the room, there is a problem', '2020-01-01 08:28:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 00:00:00.0', 'The temperature is too high', '2020-01-03 00:09:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 02:09:00.0', 'The temperature is too high', '2020-01-03 02:17:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 04:17:00.0', 'Check the room, there is a problem', '2020-01-03 04:23:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 06:23:00.0', 'Check the room, there is a problem', '2020-01-03 06:32:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-05 00:00:00.0', 'Check the room, there is a problem', '2020-01-05 00:06:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-05 02:06:00.0', 'Check the room, there is a problem', '2020-01-05 02:14:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-05 03:14:00.0', 'The temperature is too high', '2020-01-05 03:22:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-05 05:22:00.0', 'The temperature is too high', '2020-01-05 05:30:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-07 00:00:00.0', 'The temperature is too high', '2020-01-07 00:06:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-07 01:06:00.0', 'The temperature is too low', '2020-01-07 01:11:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-07 03:11:00.0', 'Check the room, there is a problem', '2020-01-07 03:16:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-07 05:16:00.0', 'Check the room, there is a problem', '2020-01-07 05:24:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-08 00:00:00.0', 'The temperature is too high', '2020-01-08 00:08:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
---------------GENERATION OF : SUNSHINE_SENSOR --------------

INSERT INTO CONNECTED_OBJECT(ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) VALUES (nextval(pg_get_serial_sequence('connected_object', 'id')), 0, 'Shandora', '192.168.0.17', '82:5a:be:01:01:17', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL', 5);
INSERT INTO NON_MEDICAL_CONNECTED_OBJECT(ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'SUNSHINE_SENSOR', currval(pg_get_serial_sequence('room', 'id')), 'point-7');
--------------- SETTINGS/CONFIGURATION ------------------
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-08 02:08:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 8, 5043);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-08 04:08:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 18, 1190);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-08 06:08:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 9, 2834);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-08 08:08:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 20, 8883);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-10 00:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 13, 2802);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-10 02:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 6, 350);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-10 03:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 23, 7286);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-10 04:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 20, 10870);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-12 00:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 17, 2770);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-12 01:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 9, 3963);
--------------- EVENTS ------------------
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 02:00:00.0', 'It is cold', '2020-01-01 02:08:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 03:08:00.0', 'It is cold', '2020-01-01 03:16:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 04:16:00.0', 'Check the room, there is a problem', '2020-01-01 04:22:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 06:22:00.0', 'Check the room, there is a problem', '2020-01-01 06:27:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 00:00:00.0', 'It is sunny on the outside', '2020-01-03 00:07:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 01:07:00.0', 'Check the room, there is a problem', '2020-01-03 01:14:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 02:14:00.0', 'Check the room, there is a problem', '2020-01-03 02:21:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 04:21:00.0', 'Check the room, there is a problem', '2020-01-03 04:29:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-05 00:00:00.0', 'Check the room, there is a problem', '2020-01-05 00:07:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-05 01:07:00.0', 'It is sunny on the outside', '2020-01-05 01:14:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-05 03:14:00.0', 'It is sunny on the outside', '2020-01-05 03:21:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-05 04:21:00.0', 'It is sunny on the outside', '2020-01-05 04:28:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-07 00:00:00.0', 'It is cold', '2020-01-07 00:05:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-07 01:05:00.0', 'Check the room, there is a problem', '2020-01-07 01:10:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-07 02:10:00.0', 'Check the room, there is a problem', '2020-01-07 02:16:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-07 03:16:00.0', 'Check the room, there is a problem', '2020-01-07 03:23:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
---------------GENERATION OF : BULB --------------

INSERT INTO CONNECTED_OBJECT(ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) VALUES (nextval(pg_get_serial_sequence('connected_object', 'id')), 0, 'Shandora', '192.168.0.18', '82:5a:be:01:01:18', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL', 3);
INSERT INTO NON_MEDICAL_CONNECTED_OBJECT(ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'BULB', currval(pg_get_serial_sequence('room', 'id')), 'point-3');
--------------- SETTINGS/CONFIGURATION ------------------
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 04:23:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#20EFB3');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 05:23:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#4AC62F');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 07:23:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#20EFB3');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 09:23:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FFA55B');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-08 00:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FFA55B');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-08 01:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#4AC62F');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-08 02:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#20EFB3');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-08 04:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#20EFB3');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-09 00:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#20EFB3');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-09 01:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#C845FC');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-09 03:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#20EFB3');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-09 04:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FB217A');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-11 00:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#4AC62F');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-11 02:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#4AC62F');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-11 04:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FB0000');
--------------- EVENTS ------------------
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 01:00:00.0', 'The bulb is providing too much heat', '2020-01-01 01:09:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 02:09:00.0', 'The bulb is providing too much heat', '2020-01-01 02:15:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 04:15:00.0', 'The bulb is using too much energy', '2020-01-01 04:21:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 06:21:00.0', 'The bulb is providing too much heat', '2020-01-01 06:26:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 00:00:00.0', 'The bulb is using too much energy', '2020-01-02 00:07:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 02:07:00.0', 'The bulb is providing too much heat', '2020-01-02 02:15:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 03:15:00.0', 'The bulb is using too much energy', '2020-01-02 03:23:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 05:23:00.0', 'The bulb is using too much energy', '2020-01-02 05:30:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
----------------------------------------------------------------------------------
----------------------------------------------------------------------------------

---------------------------------------------------------------------
------------------- ROOM N°108---------------------------------------
---------- FOR SMITH Ariana------------------------------------
---------------------------------------------------------------------
INSERT INTO SKYPIEA_USER(id, version, last_name, first_name, username, password, user_type, last_connection_date) VALUES (nextval(pg_get_serial_sequence('skypiea_user', 'id')), 0, 'Smith', 'Ariana', 'ariana', '$2a$10$cvGDtoOAcl9UbpeKod2k1uzVF6YGrpypOy8LNGO2I4fddwbBjqw26', 'RESIDENT', '2020-01-01 12:00:00.000');
INSERT INTO RESIDENT(id, birth_day) VALUES (currval(pg_get_serial_sequence('skypiea_user', 'id')), '1939-12-09 09:00:00.000');
INSERT INTO ROOM(id, version, door_number, floor, width,length, height, wing, svg_point, resident_id) VALUES (nextval(pg_get_serial_sequence('room', 'id')), 0, 108, 1, 6.6, 3.0, 2.0, 'NORTH', 'room-8', currval(pg_get_serial_sequence('skypiea_user', 'id')));
---------------GENERATION OF : TEMPERATURE_CONTROLLER --------------

INSERT INTO CONNECTED_OBJECT(ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) VALUES (nextval(pg_get_serial_sequence('connected_object', 'id')), 0, 'Shandora', '192.168.0.19', '82:5a:be:01:01:19', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL', 5);
INSERT INTO NON_MEDICAL_CONNECTED_OBJECT(ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'TEMPERATURE_CONTROLLER', currval(pg_get_serial_sequence('room', 'id')), 'point-7');
--------------- SETTINGS/CONFIGURATION ------------------
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 01:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 12, 18, false, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 02:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 15, 20, true, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 03:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 14, 18, false, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 04:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 19, 22, false, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 00:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 20, 14, false, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 02:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 16, 18, true, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 04:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 13, 17, true, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 05:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 12, 14, true, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 00:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 18, 12, true, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 02:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 21, 16, false, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 03:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 18, 14, false, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 05:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 16, 22, true, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 00:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 14, 20, false, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 02:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 20, 14, true, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 03:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 17, 13, false, true);
--------------- EVENTS ------------------
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 02:00:00.0', 'The temperature is too low', '2020-01-01 02:05:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 04:05:00.0', 'The temperature is too low', '2020-01-01 04:13:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 06:13:00.0', 'The temperature is too high', '2020-01-01 06:20:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 07:20:00.0', 'The temperature is too low', '2020-01-01 07:25:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 00:00:00.0', 'Check the room, there is a problem', '2020-01-02 00:05:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 02:05:00.0', 'The temperature is too high', '2020-01-02 02:10:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 04:10:00.0', 'Check the room, there is a problem', '2020-01-02 04:18:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 06:18:00.0', 'Check the room, there is a problem', '2020-01-02 06:24:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 00:00:00.0', 'The temperature is too low', '2020-01-03 00:08:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
---------------GENERATION OF : SUNSHINE_SENSOR --------------

INSERT INTO CONNECTED_OBJECT(ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) VALUES (nextval(pg_get_serial_sequence('connected_object', 'id')), 0, 'Shandora', '192.168.0.20', '82:5a:be:01:01:20', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL', 4);
INSERT INTO NON_MEDICAL_CONNECTED_OBJECT(ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'SUNSHINE_SENSOR', currval(pg_get_serial_sequence('room', 'id')), 'point-12');
--------------- SETTINGS/CONFIGURATION ------------------
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 01:08:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 11, 6823);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 03:08:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 20, 10612);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 04:08:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 12, 9257);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 06:08:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 23, 3880);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 00:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 10, 11885);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 01:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 9, 11998);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 03:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 18, 9814);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 04:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 23, 3087);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 00:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 17, 2169);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 02:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 19, 9628);
--------------- EVENTS ------------------
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 02:00:00.0', 'It is sunny on the outside', '2020-01-01 02:09:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 03:09:00.0', 'It is cold', '2020-01-01 03:16:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 04:16:00.0', 'It is cold', '2020-01-01 04:24:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 06:24:00.0', 'It is cold', '2020-01-01 06:32:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 00:00:00.0', 'It is cold', '2020-01-02 00:09:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 02:09:00.0', 'It is cold', '2020-01-02 02:15:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 03:15:00.0', 'It is cold', '2020-01-02 03:22:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 05:22:00.0', 'It is sunny on the outside', '2020-01-02 05:29:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 00:00:00.0', 'Check the room, there is a problem', '2020-01-04 00:07:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 01:07:00.0', 'It is sunny on the outside', '2020-01-04 01:12:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 02:12:00.0', 'It is cold', '2020-01-04 02:18:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
---------------GENERATION OF : BULB --------------

INSERT INTO CONNECTED_OBJECT(ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) VALUES (nextval(pg_get_serial_sequence('connected_object', 'id')), 0, 'Shandora', '192.168.0.21', '82:5a:be:01:01:21', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL', 5);
INSERT INTO NON_MEDICAL_CONNECTED_OBJECT(ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'BULB', currval(pg_get_serial_sequence('room', 'id')), 'point-3');
--------------- SETTINGS/CONFIGURATION ------------------
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 03:18:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#196DC7');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 05:18:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#196DC7');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 07:18:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FB0000');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 09:18:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#196DC7');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 00:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FB217A');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 01:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FB0000');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 02:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#DC03CB');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 04:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#C845FC');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 00:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#20EFB3');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 01:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FFA55B');
--------------- EVENTS ------------------
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 01:00:00.0', 'The bulb is providing too much heat', '2020-01-01 01:09:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 03:09:00.0', 'The bulb is using too much energy', '2020-01-01 03:15:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 05:15:00.0', 'Check the room, there is a problem', '2020-01-01 05:22:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 07:22:00.0', 'The bulb is using too much energy', '2020-01-01 07:29:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 00:00:00.0', 'Check the room, there is a problem', '2020-01-02 00:07:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 02:07:00.0', 'Check the room, there is a problem', '2020-01-02 02:13:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 03:13:00.0', 'The bulb is using too much energy', '2020-01-02 03:21:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 04:21:00.0', 'Check the room, there is a problem', '2020-01-02 04:29:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 00:00:00.0', 'The bulb is using too much energy', '2020-01-04 00:07:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 01:07:00.0', 'The bulb is using too much energy', '2020-01-04 01:15:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 03:15:00.0', 'The bulb is using too much energy', '2020-01-04 03:22:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 05:22:00.0', 'The bulb is providing too much heat', '2020-01-04 05:31:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
----------------------------------------------------------------------------------
----------------------------------------------------------------------------------

---------------------------------------------------------------------
------------------- ROOM N°109---------------------------------------
---------- FOR JOHNSON Bailey------------------------------------
---------------------------------------------------------------------
INSERT INTO SKYPIEA_USER(id, version, last_name, first_name, username, password, user_type, last_connection_date) VALUES (nextval(pg_get_serial_sequence('skypiea_user', 'id')), 0, 'Johnson', 'Bailey', 'bailey', '$2a$10$WiwtcGbyodHz8gjW2m4xneQnkTCKIWHewb71gc6KJkSlGLJVJb9Aa', 'RESIDENT', '2020-01-01 12:00:00.000');
INSERT INTO RESIDENT(id, birth_day) VALUES (currval(pg_get_serial_sequence('skypiea_user', 'id')), '1939-12-09 09:00:00.000');
INSERT INTO ROOM(id, version, door_number, floor, width,length, height, wing, svg_point, resident_id) VALUES (nextval(pg_get_serial_sequence('room', 'id')), 0, 109, 1, 6.6, 3.0, 2.0, 'NORTH', 'room-9', currval(pg_get_serial_sequence('skypiea_user', 'id')));
---------------GENERATION OF : TEMPERATURE_CONTROLLER --------------

INSERT INTO CONNECTED_OBJECT(ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) VALUES (nextval(pg_get_serial_sequence('connected_object', 'id')), 0, 'Shandora', '192.168.0.22', '82:5a:be:01:01:22', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL', 5);
INSERT INTO NON_MEDICAL_CONNECTED_OBJECT(ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'TEMPERATURE_CONTROLLER', currval(pg_get_serial_sequence('room', 'id')), 'point-7');
--------------- SETTINGS/CONFIGURATION ------------------
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 02:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 20, 18, true, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 03:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 22, 13, false, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 04:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 17, 21, false, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 06:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 14, 16, false, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 00:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 19, 14, false, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 02:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 13, 20, true, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 04:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 18, 12, false, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 06:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 21, 18, true, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 00:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 15, 12, true, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 02:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 14, 17, true, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 04:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 22, 13, true, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 05:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 14, 14, false, true);
--------------- EVENTS ------------------
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 01:00:00.0', 'The temperature is too high', '2020-01-01 01:06:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 03:06:00.0', 'The temperature is too high', '2020-01-01 03:15:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 05:15:00.0', 'The temperature is too low', '2020-01-01 05:24:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 06:24:00.0', 'Check the room, there is a problem', '2020-01-01 06:29:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 00:00:00.0', 'Check the room, there is a problem', '2020-01-02 00:06:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 01:06:00.0', 'The temperature is too low', '2020-01-02 01:13:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 03:13:00.0', 'The temperature is too high', '2020-01-02 03:20:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 04:20:00.0', 'The temperature is too low', '2020-01-02 04:25:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 00:00:00.0', 'The temperature is too low', '2020-01-03 00:08:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 02:08:00.0', 'The temperature is too low', '2020-01-03 02:16:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 04:16:00.0', 'The temperature is too high', '2020-01-03 04:25:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 05:25:00.0', 'The temperature is too low', '2020-01-03 05:34:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-05 00:00:00.0', 'The temperature is too high', '2020-01-05 00:09:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-05 02:09:00.0', 'The temperature is too low', '2020-01-05 02:14:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
---------------GENERATION OF : SUNSHINE_SENSOR --------------

INSERT INTO CONNECTED_OBJECT(ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) VALUES (nextval(pg_get_serial_sequence('connected_object', 'id')), 0, 'Shandora', '192.168.0.23', '82:5a:be:01:01:23', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL', 5);
INSERT INTO NON_MEDICAL_CONNECTED_OBJECT(ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'SUNSHINE_SENSOR', currval(pg_get_serial_sequence('room', 'id')), 'point-3');
--------------- SETTINGS/CONFIGURATION ------------------
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 04:14:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 12, 9911);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 06:14:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 22, 4863);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 08:14:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 11, 11786);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 10:14:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 18, 6292);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 00:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 12, 5409);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 01:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 12, 5934);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 02:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 21, 10857);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 04:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 6, 8855);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-08 00:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 21, 9551);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-08 01:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 7, 6224);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-08 03:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 18, 3244);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-08 04:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 18, 5295);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-10 00:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 11, 7352);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-10 01:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 22, 5796);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-10 02:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 11, 5703);
--------------- EVENTS ------------------
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 01:00:00.0', 'It is sunny on the outside', '2020-01-01 01:05:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 03:05:00.0', 'It is sunny on the outside', '2020-01-01 03:14:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 05:14:00.0', 'It is sunny on the outside', '2020-01-01 05:22:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 07:22:00.0', 'It is sunny on the outside', '2020-01-01 07:28:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 00:00:00.0', 'It is sunny on the outside', '2020-01-02 00:08:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 02:08:00.0', 'It is sunny on the outside', '2020-01-02 02:16:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 04:16:00.0', 'It is sunny on the outside', '2020-01-02 04:21:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 06:21:00.0', 'It is cold', '2020-01-02 06:28:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 00:00:00.0', 'It is cold', '2020-01-03 00:09:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 02:09:00.0', 'It is cold', '2020-01-03 02:18:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 03:18:00.0', 'It is cold', '2020-01-03 03:23:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
---------------GENERATION OF : BULB --------------

INSERT INTO CONNECTED_OBJECT(ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) VALUES (nextval(pg_get_serial_sequence('connected_object', 'id')), 0, 'Shandora', '192.168.0.24', '82:5a:be:01:01:24', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL', 5);
INSERT INTO NON_MEDICAL_CONNECTED_OBJECT(ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'BULB', currval(pg_get_serial_sequence('room', 'id')), 'point-12');
--------------- SETTINGS/CONFIGURATION ------------------
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 04:23:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#196DC7');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 06:23:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#196DC7');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 08:23:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FB217A');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 09:23:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#DC03CB');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 00:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FFA55B');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 02:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#DC03CB');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 04:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FFA55B');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 05:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#DC03CB');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 00:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#19C7C7');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 02:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FCED0A');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 04:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FFA55B');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 05:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#C845FC');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-09 00:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#DC03CB');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-09 02:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#C845FC');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-09 03:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#DC03CB');
--------------- EVENTS ------------------
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 02:00:00.0', 'The bulb is providing too much heat', '2020-01-01 02:05:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 03:05:00.0', 'The bulb is providing too much heat', '2020-01-01 03:14:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 04:14:00.0', 'The bulb is using too much energy', '2020-01-01 04:19:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 06:19:00.0', 'The bulb is using too much energy', '2020-01-01 06:25:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 00:00:00.0', 'Check the room, there is a problem', '2020-01-02 00:08:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 01:08:00.0', 'The bulb is using too much energy', '2020-01-02 01:17:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 03:17:00.0', 'The bulb is providing too much heat', '2020-01-02 03:26:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 04:26:00.0', 'The bulb is providing too much heat', '2020-01-02 04:33:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 00:00:00.0', 'The bulb is providing too much heat', '2020-01-03 00:08:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 02:08:00.0', 'Check the room, there is a problem', '2020-01-03 02:17:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 04:17:00.0', 'The bulb is using too much energy', '2020-01-03 04:26:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 06:26:00.0', 'The bulb is using too much energy', '2020-01-03 06:34:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 00:00:00.0', 'Check the room, there is a problem', '2020-01-04 00:05:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 02:05:00.0', 'The bulb is providing too much heat', '2020-01-04 02:12:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 04:12:00.0', 'Check the room, there is a problem', '2020-01-04 04:18:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
----------------------------------------------------------------------------------
----------------------------------------------------------------------------------

---------------------------------------------------------------------
------------------- ROOM N°110---------------------------------------
---------- FOR WILLIAMS Beverly------------------------------------
---------------------------------------------------------------------
INSERT INTO SKYPIEA_USER(id, version, last_name, first_name, username, password, user_type, last_connection_date) VALUES (nextval(pg_get_serial_sequence('skypiea_user', 'id')), 0, 'Williams', 'Beverly', 'beverly', '$2a$10$zD4bz3yW4O2Ttlm4DG/w6ulkU6.Y0/XsXY2pPN5.rrg6ikKcoykQa', 'RESIDENT', '2020-01-01 12:00:00.000');
INSERT INTO RESIDENT(id, birth_day) VALUES (currval(pg_get_serial_sequence('skypiea_user', 'id')), '1939-12-09 09:00:00.000');
INSERT INTO ROOM(id, version, door_number, floor, width,length, height, wing, svg_point, resident_id) VALUES (nextval(pg_get_serial_sequence('room', 'id')), 0, 110, 1, 6.6, 3.0, 2.0, 'NORTH', 'room-10', currval(pg_get_serial_sequence('skypiea_user', 'id')));
---------------GENERATION OF : TEMPERATURE_CONTROLLER --------------

INSERT INTO CONNECTED_OBJECT(ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) VALUES (nextval(pg_get_serial_sequence('connected_object', 'id')), 0, 'Shandora', '192.168.0.25', '82:5a:be:01:01:25', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL', 3);
INSERT INTO NON_MEDICAL_CONNECTED_OBJECT(ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'TEMPERATURE_CONTROLLER', currval(pg_get_serial_sequence('room', 'id')), 'point-3');
--------------- SETTINGS/CONFIGURATION ------------------
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 02:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 20, 16, true, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 03:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 22, 14, false, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 04:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 12, 16, false, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 05:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 20, 18, false, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-02 00:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 19, 21, true, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-02 01:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 18, 20, false, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-02 02:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 14, 18, false, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-02 03:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 18, 18, false, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 00:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 19, 16, false, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 02:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 16, 13, false, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 04:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 18, 14, false, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 06:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 20, 21, false, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 00:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 19, 20, true, false);
--------------- EVENTS ------------------
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 01:00:00.0', 'Check the room, there is a problem', '2020-01-01 01:09:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 03:09:00.0', 'The temperature is too low', '2020-01-01 03:14:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 04:14:00.0', 'The temperature is too low', '2020-01-01 04:22:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 06:22:00.0', 'Check the room, there is a problem', '2020-01-01 06:30:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 00:00:00.0', 'Check the room, there is a problem', '2020-01-03 00:06:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 02:06:00.0', 'Check the room, there is a problem', '2020-01-03 02:13:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 03:13:00.0', 'The temperature is too low', '2020-01-03 03:20:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 05:20:00.0', 'Check the room, there is a problem', '2020-01-03 05:28:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-05 00:00:00.0', 'The temperature is too low', '2020-01-05 00:08:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-05 01:08:00.0', 'The temperature is too low', '2020-01-05 01:13:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-05 03:13:00.0', 'The temperature is too high', '2020-01-05 03:21:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-05 05:21:00.0', 'The temperature is too low', '2020-01-05 05:30:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-06 00:00:00.0', 'Check the room, there is a problem', '2020-01-06 00:05:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
---------------GENERATION OF : SUNSHINE_SENSOR --------------

INSERT INTO CONNECTED_OBJECT(ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) VALUES (nextval(pg_get_serial_sequence('connected_object', 'id')), 0, 'Shandora', '192.168.0.26', '82:5a:be:01:01:26', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL', 5);
INSERT INTO NON_MEDICAL_CONNECTED_OBJECT(ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'SUNSHINE_SENSOR', currval(pg_get_serial_sequence('room', 'id')), 'point-12');
--------------- SETTINGS/CONFIGURATION ------------------
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 02:05:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 24, 2376);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 04:05:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 12, 485);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 05:05:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 5, 5767);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 06:05:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 12, 11097);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 00:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 20, 11865);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 01:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 9, 11275);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 03:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 17, 9532);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 05:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 22, 9516);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-09 00:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 5, 7297);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-09 01:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 22, 5922);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-09 02:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 13, 3860);
--------------- EVENTS ------------------
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 01:00:00.0', 'It is cold', '2020-01-01 01:05:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 03:05:00.0', 'Check the room, there is a problem', '2020-01-01 03:14:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 05:14:00.0', 'Check the room, there is a problem', '2020-01-01 05:23:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 06:23:00.0', 'It is cold', '2020-01-01 06:29:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 00:00:00.0', 'It is cold', '2020-01-03 00:09:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 01:09:00.0', 'It is cold', '2020-01-03 01:14:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 02:14:00.0', 'It is sunny on the outside', '2020-01-03 02:20:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 04:20:00.0', 'Check the room, there is a problem', '2020-01-03 04:27:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-05 00:00:00.0', 'It is cold', '2020-01-05 00:08:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-05 02:08:00.0', 'Check the room, there is a problem', '2020-01-05 02:17:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-05 04:17:00.0', 'Check the room, there is a problem', '2020-01-05 04:26:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
---------------GENERATION OF : BULB --------------

INSERT INTO CONNECTED_OBJECT(ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) VALUES (nextval(pg_get_serial_sequence('connected_object', 'id')), 0, 'Shandora', '192.168.0.27', '82:5a:be:01:01:27', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL', 3);
INSERT INTO NON_MEDICAL_CONNECTED_OBJECT(ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'BULB', currval(pg_get_serial_sequence('room', 'id')), 'point-7');
--------------- SETTINGS/CONFIGURATION ------------------
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 05:26:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FB0000');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 07:26:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FB217A');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 08:26:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FB0000');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 10:26:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#196DC7');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 00:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FFA55B');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 01:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FB217A');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 03:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#DC03CB');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 04:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#DC03CB');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-08 00:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#19C7C7');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-08 01:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FCED0A');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-08 02:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FB217A');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-08 03:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#20EFB3');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-10 00:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#19C7C7');
--------------- EVENTS ------------------
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 02:00:00.0', 'The bulb is providing too much heat', '2020-01-01 02:07:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 04:07:00.0', 'The bulb is using too much energy', '2020-01-01 04:13:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 05:13:00.0', 'The bulb is using too much energy', '2020-01-01 05:19:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 07:19:00.0', 'The bulb is using too much energy', '2020-01-01 07:25:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 00:00:00.0', 'Check the room, there is a problem', '2020-01-03 00:05:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 02:05:00.0', 'Check the room, there is a problem', '2020-01-03 02:14:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 04:14:00.0', 'Check the room, there is a problem', '2020-01-03 04:20:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 06:20:00.0', 'The bulb is using too much energy', '2020-01-03 06:28:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 00:00:00.0', 'The bulb is using too much energy', '2020-01-04 00:07:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 02:07:00.0', 'The bulb is using too much energy', '2020-01-04 02:16:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 04:16:00.0', 'The bulb is using too much energy', '2020-01-04 04:23:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 06:23:00.0', 'The bulb is using too much energy', '2020-01-04 06:29:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-05 00:00:00.0', 'The bulb is providing too much heat', '2020-01-05 00:08:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
----------------------------------------------------------------------------------
----------------------------------------------------------------------------------

---------------------------------------------------------------------
------------------- ROOM N°111---------------------------------------
---------- FOR JONES Blaine------------------------------------
---------------------------------------------------------------------
INSERT INTO SKYPIEA_USER(id, version, last_name, first_name, username, password, user_type, last_connection_date) VALUES (nextval(pg_get_serial_sequence('skypiea_user', 'id')), 0, 'Jones', 'Blaine', 'blaine', '$2a$10$Vi1jh16PcGThuw8hAIqQX.RSzA8McO7/4CTeM1TIE7qLRAU.jWpZG', 'RESIDENT', '2020-01-01 12:00:00.000');
INSERT INTO RESIDENT(id, birth_day) VALUES (currval(pg_get_serial_sequence('skypiea_user', 'id')), '1939-12-09 09:00:00.000');
INSERT INTO ROOM(id, version, door_number, floor, width,length, height, wing, svg_point, resident_id) VALUES (nextval(pg_get_serial_sequence('room', 'id')), 0, 111, 1, 6.6, 3.0, 2.0, 'NORTH', 'room-11', currval(pg_get_serial_sequence('skypiea_user', 'id')));
---------------GENERATION OF : TEMPERATURE_CONTROLLER --------------

INSERT INTO CONNECTED_OBJECT(ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) VALUES (nextval(pg_get_serial_sequence('connected_object', 'id')), 0, 'Shandora', '192.168.0.28', '82:5a:be:01:01:28', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL', 5);
INSERT INTO NON_MEDICAL_CONNECTED_OBJECT(ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'TEMPERATURE_CONTROLLER', currval(pg_get_serial_sequence('room', 'id')), 'point-3');
--------------- SETTINGS/CONFIGURATION ------------------
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 02:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 14, 17, false, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 03:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 17, 12, false, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 05:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 13, 15, true, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 06:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 21, 13, false, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-02 00:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 13, 18, false, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-02 02:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 13, 16, false, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-02 04:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 13, 19, true, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-02 06:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 17, 19, true, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 00:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 18, 13, false, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 02:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 15, 15, false, true);
--------------- EVENTS ------------------
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 02:00:00.0', 'Check the room, there is a problem', '2020-01-01 02:05:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 04:05:00.0', 'The temperature is too high', '2020-01-01 04:11:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 06:11:00.0', 'The temperature is too high', '2020-01-01 06:19:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 07:19:00.0', 'The temperature is too high', '2020-01-01 07:26:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 00:00:00.0', 'The temperature is too low', '2020-01-03 00:07:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 02:07:00.0', 'The temperature is too low', '2020-01-03 02:14:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 03:14:00.0', 'The temperature is too low', '2020-01-03 03:20:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 05:20:00.0', 'Check the room, there is a problem', '2020-01-03 05:27:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
---------------GENERATION OF : SUNSHINE_SENSOR --------------

INSERT INTO CONNECTED_OBJECT(ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) VALUES (nextval(pg_get_serial_sequence('connected_object', 'id')), 0, 'Shandora', '192.168.0.29', '82:5a:be:01:01:29', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL', 5);
INSERT INTO NON_MEDICAL_CONNECTED_OBJECT(ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'SUNSHINE_SENSOR', currval(pg_get_serial_sequence('room', 'id')), 'point-7');
--------------- SETTINGS/CONFIGURATION ------------------
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 07:27:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 10, 2560);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 08:27:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 17, 5446);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 09:27:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 8, 5374);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 10:27:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 19, 5560);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 00:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 20, 3692);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 01:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 10, 2915);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 02:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 23, 5865);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 03:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 21, 8391);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 00:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 13, 11543);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 02:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 12, 6856);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 04:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 18, 6290);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 05:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 14, 6781);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-09 00:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 12, 1584);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-09 01:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 19, 7556);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-09 02:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 10, 1906);
--------------- EVENTS ------------------
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 01:00:00.0', 'It is cold', '2020-01-01 01:08:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 02:08:00.0', 'Check the room, there is a problem', '2020-01-01 02:14:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 03:14:00.0', 'It is cold', '2020-01-01 03:23:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 04:23:00.0', 'It is cold', '2020-01-01 04:31:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 00:00:00.0', 'It is cold', '2020-01-03 00:06:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 01:06:00.0', 'It is sunny on the outside', '2020-01-03 01:12:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 03:12:00.0', 'Check the room, there is a problem', '2020-01-03 03:21:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 04:21:00.0', 'Check the room, there is a problem', '2020-01-03 04:29:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 00:00:00.0', 'Check the room, there is a problem', '2020-01-04 00:05:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 01:05:00.0', 'It is cold', '2020-01-04 01:14:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
---------------GENERATION OF : BULB --------------

INSERT INTO CONNECTED_OBJECT(ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) VALUES (nextval(pg_get_serial_sequence('connected_object', 'id')), 0, 'Shandora', '192.168.0.30', '82:5a:be:01:01:30', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL', 4);
INSERT INTO NON_MEDICAL_CONNECTED_OBJECT(ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'BULB', currval(pg_get_serial_sequence('room', 'id')), 'point-12');
--------------- SETTINGS/CONFIGURATION ------------------
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 03:14:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FCED0A');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 05:14:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FB217A');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 06:14:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FB0000');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 08:14:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#DC03CB');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 00:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#C845FC');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 02:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#DC03CB');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 04:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#19C7C7');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 06:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FFA55B');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 00:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#19C7C7');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 01:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#196DC7');
--------------- EVENTS ------------------
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 01:00:00.0', 'The bulb is providing too much heat', '2020-01-01 01:05:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 02:05:00.0', 'The bulb is using too much energy', '2020-01-01 02:14:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 03:14:00.0', 'The bulb is using too much energy', '2020-01-01 03:20:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 05:20:00.0', 'The bulb is providing too much heat', '2020-01-01 05:26:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 00:00:00.0', 'The bulb is providing too much heat', '2020-01-03 00:07:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 01:07:00.0', 'The bulb is providing too much heat', '2020-01-03 01:13:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 03:13:00.0', 'The bulb is providing too much heat', '2020-01-03 03:21:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 05:21:00.0', 'Check the room, there is a problem', '2020-01-03 05:27:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-05 00:00:00.0', 'The bulb is providing too much heat', '2020-01-05 00:06:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-05 01:06:00.0', 'The bulb is using too much energy', '2020-01-05 01:12:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-05 02:12:00.0', 'Check the room, there is a problem', '2020-01-05 02:17:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-05 04:17:00.0', 'The bulb is providing too much heat', '2020-01-05 04:22:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-07 00:00:00.0', 'Check the room, there is a problem', '2020-01-07 00:08:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-07 02:08:00.0', 'Check the room, there is a problem', '2020-01-07 02:16:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-07 04:16:00.0', 'The bulb is providing too much heat', '2020-01-07 04:24:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-07 06:24:00.0', 'The bulb is using too much energy', '2020-01-07 06:29:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-09 00:00:00.0', 'The bulb is providing too much heat', '2020-01-09 00:09:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
----------------------------------------------------------------------------------
----------------------------------------------------------------------------------

---------------------------------------------------------------------
------------------- ROOM N°112---------------------------------------
---------- FOR BROWN Brea------------------------------------
---------------------------------------------------------------------
INSERT INTO SKYPIEA_USER(id, version, last_name, first_name, username, password, user_type, last_connection_date) VALUES (nextval(pg_get_serial_sequence('skypiea_user', 'id')), 0, 'Brown', 'Brea', 'brea', '$2a$10$wpsYCcBPoltRvU3ZpMwH6ew.EDM5BGTtf.3QWKV2IzOWwyZMKDiOW', 'RESIDENT', '2020-01-01 12:00:00.000');
INSERT INTO RESIDENT(id, birth_day) VALUES (currval(pg_get_serial_sequence('skypiea_user', 'id')), '1939-12-09 09:00:00.000');
INSERT INTO ROOM(id, version, door_number, floor, width,length, height, wing, svg_point, resident_id) VALUES (nextval(pg_get_serial_sequence('room', 'id')), 0, 112, 1, 6.6, 3.0, 2.0, 'NORTH', 'room-12', currval(pg_get_serial_sequence('skypiea_user', 'id')));
---------------GENERATION OF : TEMPERATURE_CONTROLLER --------------

INSERT INTO CONNECTED_OBJECT(ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) VALUES (nextval(pg_get_serial_sequence('connected_object', 'id')), 0, 'Shandora', '192.168.0.31', '82:5a:be:01:01:31', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL', 4);
INSERT INTO NON_MEDICAL_CONNECTED_OBJECT(ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'TEMPERATURE_CONTROLLER', currval(pg_get_serial_sequence('room', 'id')), 'point-3');
--------------- SETTINGS/CONFIGURATION ------------------
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 02:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 14, 16, false, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 03:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 20, 15, false, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 05:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 13, 16, true, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 06:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 22, 15, false, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 00:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 13, 22, true, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 01:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 20, 21, false, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 02:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 22, 13, true, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 04:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 13, 20, true, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 00:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 16, 21, false, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 02:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 18, 21, false, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 04:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 20, 15, false, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 06:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 13, 21, false, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 00:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 19, 20, false, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 01:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 22, 19, true, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 02:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 16, 21, false, true);
--------------- EVENTS ------------------
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 02:00:00.0', 'The temperature is too high', '2020-01-01 02:06:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 03:06:00.0', 'The temperature is too high', '2020-01-01 03:15:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 05:15:00.0', 'The temperature is too low', '2020-01-01 05:23:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 07:23:00.0', 'The temperature is too low', '2020-01-01 07:31:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 00:00:00.0', 'Check the room, there is a problem', '2020-01-03 00:07:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 02:07:00.0', 'The temperature is too high', '2020-01-03 02:16:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 03:16:00.0', 'The temperature is too low', '2020-01-03 03:25:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 05:25:00.0', 'The temperature is too high', '2020-01-03 05:31:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-05 00:00:00.0', 'Check the room, there is a problem', '2020-01-05 00:08:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-05 01:08:00.0', 'Check the room, there is a problem', '2020-01-05 01:17:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-05 02:17:00.0', 'Check the room, there is a problem', '2020-01-05 02:26:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
---------------GENERATION OF : SUNSHINE_SENSOR --------------

INSERT INTO CONNECTED_OBJECT(ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) VALUES (nextval(pg_get_serial_sequence('connected_object', 'id')), 0, 'Shandora', '192.168.0.32', '82:5a:be:01:01:32', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL', 5);
INSERT INTO NON_MEDICAL_CONNECTED_OBJECT(ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'SUNSHINE_SENSOR', currval(pg_get_serial_sequence('room', 'id')), 'point-12');
--------------- SETTINGS/CONFIGURATION ------------------
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 04:26:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 22, 8452);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 06:26:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 6, 8149);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 08:26:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 6, 6081);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 10:26:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 23, 427);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 00:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 19, 5085);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 01:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 9711);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 03:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 18, 1644);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 05:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 20, 2233);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-09 00:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 9, 6516);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-09 02:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 19, 11408);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-09 03:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 14, 523);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-09 05:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 11, 3758);
--------------- EVENTS ------------------
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 02:00:00.0', 'Check the room, there is a problem', '2020-01-01 02:08:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 03:08:00.0', 'Check the room, there is a problem', '2020-01-01 03:17:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 05:17:00.0', 'It is cold', '2020-01-01 05:25:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 07:25:00.0', 'Check the room, there is a problem', '2020-01-01 07:33:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 00:00:00.0', 'It is cold', '2020-01-03 00:05:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 01:05:00.0', 'Check the room, there is a problem', '2020-01-03 01:10:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 03:10:00.0', 'It is sunny on the outside', '2020-01-03 03:18:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 05:18:00.0', 'It is cold', '2020-01-03 05:26:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-05 00:00:00.0', 'It is cold', '2020-01-05 00:05:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-05 01:05:00.0', 'It is cold', '2020-01-05 01:10:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-05 03:10:00.0', 'Check the room, there is a problem', '2020-01-05 03:16:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
---------------GENERATION OF : BULB --------------

INSERT INTO CONNECTED_OBJECT(ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) VALUES (nextval(pg_get_serial_sequence('connected_object', 'id')), 0, 'Shandora', '192.168.0.33', '82:5a:be:01:01:33', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL', 3);
INSERT INTO NON_MEDICAL_CONNECTED_OBJECT(ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'BULB', currval(pg_get_serial_sequence('room', 'id')), 'point-7');
--------------- SETTINGS/CONFIGURATION ------------------
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 04:16:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FCED0A');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 05:16:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#DC03CB');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 06:16:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#20EFB3');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 08:16:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#DC03CB');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 00:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#20EFB3');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 01:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FCED0A');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 03:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#DC03CB');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 05:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#20EFB3');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-08 00:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FFA55B');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-08 02:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FB217A');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-08 04:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#19C7C7');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-08 06:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FB0000');
--------------- EVENTS ------------------
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 02:00:00.0', 'Check the room, there is a problem', '2020-01-01 02:09:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 03:09:00.0', 'The bulb is using too much energy', '2020-01-01 03:15:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 05:15:00.0', 'The bulb is providing too much heat', '2020-01-01 05:20:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 06:20:00.0', 'The bulb is using too much energy', '2020-01-01 06:29:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 00:00:00.0', 'The bulb is providing too much heat', '2020-01-02 00:08:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 01:08:00.0', 'The bulb is providing too much heat', '2020-01-02 01:17:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 03:17:00.0', 'Check the room, there is a problem', '2020-01-02 03:22:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 05:22:00.0', 'The bulb is providing too much heat', '2020-01-02 05:28:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
----------------------------------------------------------------------------------
----------------------------------------------------------------------------------

---------------------------------------------------------------------
------------------- ROOM N°113---------------------------------------
---------- FOR DAVIS Thatcher------------------------------------
---------------------------------------------------------------------
INSERT INTO SKYPIEA_USER(id, version, last_name, first_name, username, password, user_type, last_connection_date) VALUES (nextval(pg_get_serial_sequence('skypiea_user', 'id')), 0, 'Davis', 'Thatcher', 'thatcher', '$2a$10$y7/gIqlaybBisRHLlCLDy.RTRc1CsR3wuuqZYnJRWYxZRDKlE1Azq', 'RESIDENT', '2020-01-01 12:00:00.000');
INSERT INTO RESIDENT(id, birth_day) VALUES (currval(pg_get_serial_sequence('skypiea_user', 'id')), '1939-12-09 09:00:00.000');
INSERT INTO ROOM(id, version, door_number, floor, width,length, height, wing, svg_point, resident_id) VALUES (nextval(pg_get_serial_sequence('room', 'id')), 0, 113, 1, 6.6, 3.0, 2.0, 'NORTH', 'room-13', currval(pg_get_serial_sequence('skypiea_user', 'id')));
---------------GENERATION OF : TEMPERATURE_CONTROLLER --------------

INSERT INTO CONNECTED_OBJECT(ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) VALUES (nextval(pg_get_serial_sequence('connected_object', 'id')), 0, 'Shandora', '192.168.0.34', '82:5a:be:01:01:34', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL', 3);
INSERT INTO NON_MEDICAL_CONNECTED_OBJECT(ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'TEMPERATURE_CONTROLLER', currval(pg_get_serial_sequence('room', 'id')), 'point-12');
--------------- SETTINGS/CONFIGURATION ------------------
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 02:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 21, 15, true, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 03:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 12, 14, true, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 04:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 19, 21, true, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 06:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 13, 21, true, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-02 00:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 14, 13, true, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-02 02:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 12, 17, true, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-02 04:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 12, 18, false, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-02 06:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 18, 19, false, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 00:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 14, 12, false, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 02:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 16, 21, true, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 03:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 21, 15, true, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 05:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 21, 15, false, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 00:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 17, 19, true, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 02:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 12, 17, true, true);
--------------- EVENTS ------------------
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 01:00:00.0', 'The temperature is too low', '2020-01-01 01:06:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 03:06:00.0', 'The temperature is too high', '2020-01-01 03:13:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 04:13:00.0', 'The temperature is too high', '2020-01-01 04:19:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 06:19:00.0', 'Check the room, there is a problem', '2020-01-01 06:24:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 00:00:00.0', 'Check the room, there is a problem', '2020-01-03 00:06:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 01:06:00.0', 'Check the room, there is a problem', '2020-01-03 01:13:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 03:13:00.0', 'The temperature is too low', '2020-01-03 03:22:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 05:22:00.0', 'The temperature is too low', '2020-01-03 05:28:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 00:00:00.0', 'Check the room, there is a problem', '2020-01-04 00:07:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 02:07:00.0', 'The temperature is too low', '2020-01-04 02:16:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 04:16:00.0', 'Check the room, there is a problem', '2020-01-04 04:21:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 06:21:00.0', 'The temperature is too high', '2020-01-04 06:30:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-05 00:00:00.0', 'The temperature is too high', '2020-01-05 00:09:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-05 01:09:00.0', 'Check the room, there is a problem', '2020-01-05 01:16:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-05 03:16:00.0', 'The temperature is too high', '2020-01-05 03:24:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
---------------GENERATION OF : SUNSHINE_SENSOR --------------

INSERT INTO CONNECTED_OBJECT(ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) VALUES (nextval(pg_get_serial_sequence('connected_object', 'id')), 0, 'Shandora', '192.168.0.35', '82:5a:be:01:01:35', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL', 5);
INSERT INTO NON_MEDICAL_CONNECTED_OBJECT(ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'SUNSHINE_SENSOR', currval(pg_get_serial_sequence('room', 'id')), 'point-7');
--------------- SETTINGS/CONFIGURATION ------------------
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 05:24:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 6, 10417);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 07:24:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 10, 2682);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 08:24:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 16, 3427);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 09:24:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 20, 2320);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 00:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 14, 4546);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 01:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 5, 9803);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 03:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 10, 9101);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 05:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 16, 4610);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-08 00:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 7, 532);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-08 01:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 20, 7752);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-08 02:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 5, 7739);
--------------- EVENTS ------------------
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 01:00:00.0', 'It is sunny on the outside', '2020-01-01 01:06:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 02:06:00.0', 'It is sunny on the outside', '2020-01-01 02:11:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 03:11:00.0', 'Check the room, there is a problem', '2020-01-01 03:20:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 04:20:00.0', 'It is cold', '2020-01-01 04:29:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 00:00:00.0', 'It is sunny on the outside', '2020-01-02 00:05:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 02:05:00.0', 'It is sunny on the outside', '2020-01-02 02:14:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 03:14:00.0', 'It is cold', '2020-01-02 03:21:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 05:21:00.0', 'Check the room, there is a problem', '2020-01-02 05:30:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 00:00:00.0', 'It is cold', '2020-01-03 00:06:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 01:06:00.0', 'It is cold', '2020-01-03 01:12:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 02:12:00.0', 'It is sunny on the outside', '2020-01-03 02:17:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 03:17:00.0', 'It is sunny on the outside', '2020-01-03 03:24:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
---------------GENERATION OF : BULB --------------

INSERT INTO CONNECTED_OBJECT(ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) VALUES (nextval(pg_get_serial_sequence('connected_object', 'id')), 0, 'Shandora', '192.168.0.36', '82:5a:be:01:01:36', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL', 5);
INSERT INTO NON_MEDICAL_CONNECTED_OBJECT(ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'BULB', currval(pg_get_serial_sequence('room', 'id')), 'point-3');
--------------- SETTINGS/CONFIGURATION ------------------
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 05:24:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#DC03CB');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 06:24:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FFA55B');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 08:24:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FB217A');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 10:24:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#4AC62F');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 00:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FCED0A');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 02:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FFA55B');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 04:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#20EFB3');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 05:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#C845FC');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 00:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#20EFB3');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 02:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#20EFB3');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 04:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#4AC62F');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 06:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FFA55B');
--------------- EVENTS ------------------
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 01:00:00.0', 'Check the room, there is a problem', '2020-01-01 01:06:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 02:06:00.0', 'Check the room, there is a problem', '2020-01-01 02:12:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 03:12:00.0', 'The bulb is providing too much heat', '2020-01-01 03:18:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 04:18:00.0', 'The bulb is providing too much heat', '2020-01-01 04:26:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 00:00:00.0', 'The bulb is using too much energy', '2020-01-02 00:09:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 02:09:00.0', 'The bulb is providing too much heat', '2020-01-02 02:15:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 04:15:00.0', 'The bulb is providing too much heat', '2020-01-02 04:24:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 06:24:00.0', 'The bulb is using too much energy', '2020-01-02 06:31:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 00:00:00.0', 'Check the room, there is a problem', '2020-01-03 00:08:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 01:08:00.0', 'The bulb is using too much energy', '2020-01-03 01:15:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 02:15:00.0', 'The bulb is using too much energy', '2020-01-03 02:23:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 04:23:00.0', 'The bulb is providing too much heat', '2020-01-03 04:28:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
----------------------------------------------------------------------------------
----------------------------------------------------------------------------------

---------------------------------------------------------------------
------------------- ROOM N°114---------------------------------------
---------- FOR MILLER Thorne------------------------------------
---------------------------------------------------------------------
INSERT INTO SKYPIEA_USER(id, version, last_name, first_name, username, password, user_type, last_connection_date) VALUES (nextval(pg_get_serial_sequence('skypiea_user', 'id')), 0, 'Miller', 'Thorne', 'thorne', '$2a$10$9MO.eQZXQdKoFvpUhBicFO5pP5RVMNYXig99azs4HQpK0AqB7IqY.', 'RESIDENT', '2020-01-01 12:00:00.000');
INSERT INTO RESIDENT(id, birth_day) VALUES (currval(pg_get_serial_sequence('skypiea_user', 'id')), '1939-12-09 09:00:00.000');
INSERT INTO ROOM(id, version, door_number, floor, width,length, height, wing, svg_point, resident_id) VALUES (nextval(pg_get_serial_sequence('room', 'id')), 0, 114, 1, 6.6, 3.0, 2.0, 'NORTH', 'room-14', currval(pg_get_serial_sequence('skypiea_user', 'id')));
---------------GENERATION OF : TEMPERATURE_CONTROLLER --------------

INSERT INTO CONNECTED_OBJECT(ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) VALUES (nextval(pg_get_serial_sequence('connected_object', 'id')), 0, 'Shandora', '192.168.0.37', '82:5a:be:01:01:37', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL', 3);
INSERT INTO NON_MEDICAL_CONNECTED_OBJECT(ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'TEMPERATURE_CONTROLLER', currval(pg_get_serial_sequence('room', 'id')), 'point-3');
--------------- SETTINGS/CONFIGURATION ------------------
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 02:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 19, 17, true, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 03:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 14, 22, false, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 04:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 22, 16, false, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 06:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 20, 18, false, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-02 00:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 15, 22, true, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-02 02:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 22, 14, true, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-02 03:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 21, 14, false, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-02 04:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 13, 19, true, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 00:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 14, 18, false, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 02:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 19, 22, false, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 03:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 15, 15, true, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 04:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 20, 16, false, true);
--------------- EVENTS ------------------
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 02:00:00.0', 'Check the room, there is a problem', '2020-01-01 02:06:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 04:06:00.0', 'Check the room, there is a problem', '2020-01-01 04:12:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 06:12:00.0', 'Check the room, there is a problem', '2020-01-01 06:19:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 07:19:00.0', 'The temperature is too high', '2020-01-01 07:25:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 00:00:00.0', 'The temperature is too high', '2020-01-02 00:07:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 01:07:00.0', 'The temperature is too high', '2020-01-02 01:12:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 03:12:00.0', 'The temperature is too high', '2020-01-02 03:18:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 04:18:00.0', 'The temperature is too high', '2020-01-02 04:23:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 00:00:00.0', 'Check the room, there is a problem', '2020-01-03 00:06:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 02:06:00.0', 'Check the room, there is a problem', '2020-01-03 02:12:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 03:12:00.0', 'Check the room, there is a problem', '2020-01-03 03:20:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 04:20:00.0', 'The temperature is too high', '2020-01-03 04:28:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 00:00:00.0', 'The temperature is too high', '2020-01-04 00:05:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
---------------GENERATION OF : SUNSHINE_SENSOR --------------

INSERT INTO CONNECTED_OBJECT(ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) VALUES (nextval(pg_get_serial_sequence('connected_object', 'id')), 0, 'Shandora', '192.168.0.38', '82:5a:be:01:01:38', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL', 4);
INSERT INTO NON_MEDICAL_CONNECTED_OBJECT(ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'SUNSHINE_SENSOR', currval(pg_get_serial_sequence('room', 'id')), 'point-7');
--------------- SETTINGS/CONFIGURATION ------------------
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 01:05:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 6450);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 03:05:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 5, 11813);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 05:05:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 10, 2966);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 06:05:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 8, 7099);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 00:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 17, 8559);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 02:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 22, 9666);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 04:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 19, 9762);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 06:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 13, 6172);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 00:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 5, 11674);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 02:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 20, 5465);
--------------- EVENTS ------------------
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 01:00:00.0', 'It is cold', '2020-01-01 01:06:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 03:06:00.0', 'It is cold', '2020-01-01 03:12:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 04:12:00.0', 'It is cold', '2020-01-01 04:17:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 05:17:00.0', 'It is cold', '2020-01-01 05:25:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 00:00:00.0', 'It is sunny on the outside', '2020-01-03 00:07:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 02:07:00.0', 'It is sunny on the outside', '2020-01-03 02:15:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 03:15:00.0', 'It is cold', '2020-01-03 03:22:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 04:22:00.0', 'It is cold', '2020-01-03 04:31:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 00:00:00.0', 'It is cold', '2020-01-04 00:08:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 01:08:00.0', 'It is sunny on the outside', '2020-01-04 01:15:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 02:15:00.0', 'It is sunny on the outside', '2020-01-04 02:22:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 03:22:00.0', 'It is sunny on the outside', '2020-01-04 03:30:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-06 00:00:00.0', 'It is cold', '2020-01-06 00:08:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-06 02:08:00.0', 'It is cold', '2020-01-06 02:13:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-06 03:13:00.0', 'It is cold', '2020-01-06 03:20:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-06 05:20:00.0', 'Check the room, there is a problem', '2020-01-06 05:29:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-07 00:00:00.0', 'It is sunny on the outside', '2020-01-07 00:06:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
---------------GENERATION OF : BULB --------------

INSERT INTO CONNECTED_OBJECT(ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) VALUES (nextval(pg_get_serial_sequence('connected_object', 'id')), 0, 'Shandora', '192.168.0.39', '82:5a:be:01:01:39', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL', 4);
INSERT INTO NON_MEDICAL_CONNECTED_OBJECT(ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'BULB', currval(pg_get_serial_sequence('room', 'id')), 'point-12');
--------------- SETTINGS/CONFIGURATION ------------------
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 02:06:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FCED0A');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 04:06:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#4AC62F');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 05:06:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#196DC7');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 06:06:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FCED0A');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-09 00:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FCED0A');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-09 01:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#C845FC');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-09 02:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#19C7C7');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-09 03:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FB217A');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-11 00:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FB0000');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-11 02:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FFA55B');
--------------- EVENTS ------------------
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 01:00:00.0', 'The bulb is using too much energy', '2020-01-01 01:09:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 03:09:00.0', 'Check the room, there is a problem', '2020-01-01 03:14:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 04:14:00.0', 'The bulb is providing too much heat', '2020-01-01 04:23:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 05:23:00.0', 'The bulb is providing too much heat', '2020-01-01 05:30:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 00:00:00.0', 'Check the room, there is a problem', '2020-01-02 00:06:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 02:06:00.0', 'Check the room, there is a problem', '2020-01-02 02:11:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 04:11:00.0', 'The bulb is providing too much heat', '2020-01-02 04:16:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 05:16:00.0', 'The bulb is providing too much heat', '2020-01-02 05:22:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 00:00:00.0', 'The bulb is using too much energy', '2020-01-03 00:06:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
----------------------------------------------------------------------------------
----------------------------------------------------------------------------------

---------------------------------------------------------------------
------------------- ROOM N°115---------------------------------------
---------- FOR WILSON Thorpe------------------------------------
---------------------------------------------------------------------
INSERT INTO SKYPIEA_USER(id, version, last_name, first_name, username, password, user_type, last_connection_date) VALUES (nextval(pg_get_serial_sequence('skypiea_user', 'id')), 0, 'Wilson', 'Thorpe', 'thorpe', '$2a$10$ReEOj5TVELGH5.aR//L1S.yVgHWwLQAD35rsz7ahleGZD6hZVo9lC', 'RESIDENT', '2020-01-01 12:00:00.000');
INSERT INTO RESIDENT(id, birth_day) VALUES (currval(pg_get_serial_sequence('skypiea_user', 'id')), '1939-12-09 09:00:00.000');
INSERT INTO ROOM(id, version, door_number, floor, width,length, height, wing, svg_point, resident_id) VALUES (nextval(pg_get_serial_sequence('room', 'id')), 0, 115, 1, 6.6, 3.0, 2.0, 'NORTH', 'room-15', currval(pg_get_serial_sequence('skypiea_user', 'id')));
---------------GENERATION OF : TEMPERATURE_CONTROLLER --------------

INSERT INTO CONNECTED_OBJECT(ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) VALUES (nextval(pg_get_serial_sequence('connected_object', 'id')), 0, 'Shandora', '192.168.0.40', '82:5a:be:01:01:40', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL', 3);
INSERT INTO NON_MEDICAL_CONNECTED_OBJECT(ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'TEMPERATURE_CONTROLLER', currval(pg_get_serial_sequence('room', 'id')), 'point-3');
--------------- SETTINGS/CONFIGURATION ------------------
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 02:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 21, 17, false, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 03:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 13, 17, true, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 04:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 18, 20, true, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 05:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 12, 22, true, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 00:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 22, 13, true, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 02:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 20, 15, true, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 04:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 19, 21, true, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 06:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 18, 14, false, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 00:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 20, 21, true, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 01:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 15, 22, false, true);
--------------- EVENTS ------------------
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 02:00:00.0', 'The temperature is too high', '2020-01-01 02:06:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 03:06:00.0', 'The temperature is too high', '2020-01-01 03:15:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 05:15:00.0', 'The temperature is too high', '2020-01-01 05:24:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 07:24:00.0', 'Check the room, there is a problem', '2020-01-01 07:31:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 00:00:00.0', 'The temperature is too high', '2020-01-03 00:06:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 02:06:00.0', 'The temperature is too low', '2020-01-03 02:14:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 03:14:00.0', 'The temperature is too low', '2020-01-03 03:22:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 05:22:00.0', 'The temperature is too low', '2020-01-03 05:27:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 00:00:00.0', 'The temperature is too high', '2020-01-04 00:09:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
---------------GENERATION OF : SUNSHINE_SENSOR --------------

INSERT INTO CONNECTED_OBJECT(ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) VALUES (nextval(pg_get_serial_sequence('connected_object', 'id')), 0, 'Shandora', '192.168.0.41', '82:5a:be:01:01:41', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL', 5);
INSERT INTO NON_MEDICAL_CONNECTED_OBJECT(ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'SUNSHINE_SENSOR', currval(pg_get_serial_sequence('room', 'id')), 'point-7');
--------------- SETTINGS/CONFIGURATION ------------------
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 01:09:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 7527);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 03:09:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 14, 4756);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 04:09:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 20, 7297);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 06:09:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 8366);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 00:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 22, 1738);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 01:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 22, 8607);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 02:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 7, 7867);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 03:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 11930);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 00:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 16, 5085);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 01:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 20, 5841);
--------------- EVENTS ------------------
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 01:00:00.0', 'Check the room, there is a problem', '2020-01-01 01:09:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 02:09:00.0', 'It is cold', '2020-01-01 02:16:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 03:16:00.0', 'It is cold', '2020-01-01 03:21:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 05:21:00.0', 'It is sunny on the outside', '2020-01-01 05:28:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 00:00:00.0', 'It is sunny on the outside', '2020-01-03 00:09:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 02:09:00.0', 'It is sunny on the outside', '2020-01-03 02:15:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 04:15:00.0', 'It is cold', '2020-01-03 04:22:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 06:22:00.0', 'Check the room, there is a problem', '2020-01-03 06:30:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-05 00:00:00.0', 'It is sunny on the outside', '2020-01-05 00:08:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-05 01:08:00.0', 'It is sunny on the outside', '2020-01-05 01:17:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-05 02:17:00.0', 'Check the room, there is a problem', '2020-01-05 02:22:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-05 04:22:00.0', 'It is cold', '2020-01-05 04:31:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-07 00:00:00.0', 'It is cold', '2020-01-07 00:08:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-07 01:08:00.0', 'It is sunny on the outside', '2020-01-07 01:17:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
---------------GENERATION OF : BULB --------------

INSERT INTO CONNECTED_OBJECT(ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) VALUES (nextval(pg_get_serial_sequence('connected_object', 'id')), 0, 'Shandora', '192.168.0.42', '82:5a:be:01:01:42', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL', 3);
INSERT INTO NON_MEDICAL_CONNECTED_OBJECT(ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'BULB', currval(pg_get_serial_sequence('room', 'id')), 'point-12');
--------------- SETTINGS/CONFIGURATION ------------------
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 02:17:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#C845FC');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 03:17:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FCED0A');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 04:17:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FCED0A');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 05:17:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#4AC62F');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-08 00:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FB217A');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-08 02:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#20EFB3');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-08 04:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#196DC7');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-08 05:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#196DC7');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-09 00:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#19C7C7');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-09 01:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FB0000');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-09 02:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#20EFB3');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-09 04:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FFA55B');
--------------- EVENTS ------------------
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 02:00:00.0', 'The bulb is using too much energy', '2020-01-01 02:06:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 04:06:00.0', 'Check the room, there is a problem', '2020-01-01 04:13:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 05:13:00.0', 'The bulb is using too much energy', '2020-01-01 05:18:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 07:18:00.0', 'Check the room, there is a problem', '2020-01-01 07:27:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 00:00:00.0', 'The bulb is using too much energy', '2020-01-02 00:06:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 02:06:00.0', 'The bulb is providing too much heat', '2020-01-02 02:14:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 03:14:00.0', 'The bulb is using too much energy', '2020-01-02 03:20:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 04:20:00.0', 'The bulb is using too much energy', '2020-01-02 04:28:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 00:00:00.0', 'The bulb is providing too much heat', '2020-01-04 00:08:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 01:08:00.0', 'Check the room, there is a problem', '2020-01-04 01:16:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 02:16:00.0', 'The bulb is using too much energy', '2020-01-04 02:24:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 04:24:00.0', 'The bulb is providing too much heat', '2020-01-04 04:30:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-05 00:00:00.0', 'The bulb is using too much energy', '2020-01-05 00:06:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
----------------------------------------------------------------------------------
----------------------------------------------------------------------------------

---------------------------------------------------------------------
------------------- ROOM N°116---------------------------------------
---------- FOR MOORE Thurlow------------------------------------
---------------------------------------------------------------------
INSERT INTO SKYPIEA_USER(id, version, last_name, first_name, username, password, user_type, last_connection_date) VALUES (nextval(pg_get_serial_sequence('skypiea_user', 'id')), 0, 'Moore', 'Thurlow', 'thurlow', '$2a$10$ImnqPl5JY6WQc5wOKE8XPOdpxUbVDU11TR3XkqqKAIZWsIzDWlV6C', 'RESIDENT', '2020-01-01 12:00:00.000');
INSERT INTO RESIDENT(id, birth_day) VALUES (currval(pg_get_serial_sequence('skypiea_user', 'id')), '1939-12-09 09:00:00.000');
INSERT INTO ROOM(id, version, door_number, floor, width,length, height, wing, svg_point, resident_id) VALUES (nextval(pg_get_serial_sequence('room', 'id')), 0, 116, 1, 6.6, 3.0, 2.0, 'NORTH', 'room-16', currval(pg_get_serial_sequence('skypiea_user', 'id')));
---------------GENERATION OF : TEMPERATURE_CONTROLLER --------------

INSERT INTO CONNECTED_OBJECT(ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) VALUES (nextval(pg_get_serial_sequence('connected_object', 'id')), 0, 'Shandora', '192.168.0.43', '82:5a:be:01:01:43', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL', 4);
INSERT INTO NON_MEDICAL_CONNECTED_OBJECT(ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'TEMPERATURE_CONTROLLER', currval(pg_get_serial_sequence('room', 'id')), 'point-3');
--------------- SETTINGS/CONFIGURATION ------------------
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 02:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 13, 22, false, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 03:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 15, 14, false, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 05:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 21, 18, true, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 06:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 20, 15, true, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-02 00:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 18, 18, false, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-02 01:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 21, 21, false, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-02 02:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 16, 13, false, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-02 04:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 22, 20, false, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 00:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 18, 16, false, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 02:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 21, 13, false, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 04:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 19, 14, true, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 05:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 15, 21, false, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 00:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 12, 15, true, true);
--------------- EVENTS ------------------
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 01:00:00.0', 'The temperature is too low', '2020-01-01 01:09:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 02:09:00.0', 'Check the room, there is a problem', '2020-01-01 02:16:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 04:16:00.0', 'The temperature is too low', '2020-01-01 04:25:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 05:25:00.0', 'The temperature is too low', '2020-01-01 05:30:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 00:00:00.0', 'The temperature is too low', '2020-01-02 00:05:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 01:05:00.0', 'Check the room, there is a problem', '2020-01-02 01:13:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 03:13:00.0', 'The temperature is too high', '2020-01-02 03:22:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 05:22:00.0', 'The temperature is too low', '2020-01-02 05:27:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 00:00:00.0', 'The temperature is too high', '2020-01-03 00:09:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 02:09:00.0', 'Check the room, there is a problem', '2020-01-03 02:14:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 03:14:00.0', 'The temperature is too low', '2020-01-03 03:22:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
---------------GENERATION OF : SUNSHINE_SENSOR --------------

INSERT INTO CONNECTED_OBJECT(ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) VALUES (nextval(pg_get_serial_sequence('connected_object', 'id')), 0, 'Shandora', '192.168.0.44', '82:5a:be:01:01:44', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL', 5);
INSERT INTO NON_MEDICAL_CONNECTED_OBJECT(ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'SUNSHINE_SENSOR', currval(pg_get_serial_sequence('room', 'id')), 'point-12');
--------------- SETTINGS/CONFIGURATION ------------------
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 05:22:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 5, 742);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 07:22:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 18, 1186);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 08:22:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 23, 580);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 10:22:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 17, 10289);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 00:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 16, 3411);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 02:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 12, 7896);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 04:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 14, 695);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 05:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 23, 7238);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 00:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 6, 10276);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 02:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 7928);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 04:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 2792);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 06:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 7, 5422);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 00:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 23, 874);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 01:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 6, 9680);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 02:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 12, 11948);
--------------- EVENTS ------------------
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 01:00:00.0', 'It is sunny on the outside', '2020-01-01 01:06:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 03:06:00.0', 'Check the room, there is a problem', '2020-01-01 03:13:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 05:13:00.0', 'It is sunny on the outside', '2020-01-01 05:21:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 07:21:00.0', 'It is cold', '2020-01-01 07:28:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 00:00:00.0', 'It is cold', '2020-01-02 00:06:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 01:06:00.0', 'Check the room, there is a problem', '2020-01-02 01:13:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 03:13:00.0', 'It is cold', '2020-01-02 03:19:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 05:19:00.0', 'It is sunny on the outside', '2020-01-02 05:27:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 00:00:00.0', 'Check the room, there is a problem', '2020-01-03 00:08:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 02:08:00.0', 'It is cold', '2020-01-03 02:14:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 03:14:00.0', 'It is sunny on the outside', '2020-01-03 03:21:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 05:21:00.0', 'It is cold', '2020-01-03 05:29:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-05 00:00:00.0', 'It is sunny on the outside', '2020-01-05 00:09:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-05 01:09:00.0', 'It is cold', '2020-01-05 01:17:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
---------------GENERATION OF : BULB --------------

INSERT INTO CONNECTED_OBJECT(ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) VALUES (nextval(pg_get_serial_sequence('connected_object', 'id')), 0, 'Shandora', '192.168.0.45', '82:5a:be:01:01:45', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL', 4);
INSERT INTO NON_MEDICAL_CONNECTED_OBJECT(ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'BULB', currval(pg_get_serial_sequence('room', 'id')), 'point-7');
--------------- SETTINGS/CONFIGURATION ------------------
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 02:17:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FB0000');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 04:17:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#196DC7');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 06:17:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FB217A');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 07:17:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#C845FC');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 00:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#20EFB3');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 02:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#19C7C7');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 03:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FCED0A');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 05:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FFA55B');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-08 00:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#4AC62F');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-08 02:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#DC03CB');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-08 04:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#20EFB3');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-08 06:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#C845FC');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-10 00:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FB217A');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-10 02:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FB0000');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-10 03:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FB217A');
--------------- EVENTS ------------------
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 02:00:00.0', 'Check the room, there is a problem', '2020-01-01 02:09:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 03:09:00.0', 'Check the room, there is a problem', '2020-01-01 03:16:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 05:16:00.0', 'The bulb is using too much energy', '2020-01-01 05:23:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 07:23:00.0', 'The bulb is using too much energy', '2020-01-01 07:29:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 00:00:00.0', 'Check the room, there is a problem', '2020-01-02 00:09:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 02:09:00.0', 'Check the room, there is a problem', '2020-01-02 02:16:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 03:16:00.0', 'The bulb is providing too much heat', '2020-01-02 03:23:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 04:23:00.0', 'The bulb is using too much energy', '2020-01-02 04:32:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 00:00:00.0', 'The bulb is using too much energy', '2020-01-03 00:06:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 01:06:00.0', 'Check the room, there is a problem', '2020-01-03 01:12:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 02:12:00.0', 'Check the room, there is a problem', '2020-01-03 02:21:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 03:21:00.0', 'Check the room, there is a problem', '2020-01-03 03:28:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-05 00:00:00.0', 'Check the room, there is a problem', '2020-01-05 00:09:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-05 02:09:00.0', 'The bulb is providing too much heat', '2020-01-05 02:18:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-05 04:18:00.0', 'Check the room, there is a problem', '2020-01-05 04:24:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-05 06:24:00.0', 'The bulb is using too much energy', '2020-01-05 06:32:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-06 00:00:00.0', 'Check the room, there is a problem', '2020-01-06 00:07:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
----------------------------------------------------------------------------------
----------------------------------------------------------------------------------

---------------------------------------------------------------------
------------------- ROOM N°117---------------------------------------
---------- FOR TAYLOR Tomkin------------------------------------
---------------------------------------------------------------------
INSERT INTO SKYPIEA_USER(id, version, last_name, first_name, username, password, user_type, last_connection_date) VALUES (nextval(pg_get_serial_sequence('skypiea_user', 'id')), 0, 'Taylor', 'Tomkin', 'tomkin', '$2a$10$ILOHcpzGYqMOOFf3jWBgzOTg4yRKmeEgys3i6pZStiY6MrXH.fU9K', 'RESIDENT', '2020-01-01 12:00:00.000');
INSERT INTO RESIDENT(id, birth_day) VALUES (currval(pg_get_serial_sequence('skypiea_user', 'id')), '1939-12-09 09:00:00.000');
INSERT INTO ROOM(id, version, door_number, floor, width,length, height, wing, svg_point, resident_id) VALUES (nextval(pg_get_serial_sequence('room', 'id')), 0, 117, 1, 6.6, 3.0, 2.0, 'NORTH', 'room-17', currval(pg_get_serial_sequence('skypiea_user', 'id')));
---------------GENERATION OF : TEMPERATURE_CONTROLLER --------------

INSERT INTO CONNECTED_OBJECT(ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) VALUES (nextval(pg_get_serial_sequence('connected_object', 'id')), 0, 'Shandora', '192.168.0.46', '82:5a:be:01:01:46', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL', 5);
INSERT INTO NON_MEDICAL_CONNECTED_OBJECT(ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'TEMPERATURE_CONTROLLER', currval(pg_get_serial_sequence('room', 'id')), 'point-3');
--------------- SETTINGS/CONFIGURATION ------------------
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 01:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 15, 15, false, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 03:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 17, 16, false, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 04:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 22, 12, true, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 06:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 15, 21, false, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 00:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 21, 12, false, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 02:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 17, 19, false, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 03:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 20, 15, false, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 05:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 20, 13, true, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 00:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 16, 21, true, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 02:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 16, 17, true, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 03:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 14, 15, true, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 05:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 21, 22, false, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 00:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 21, 22, false, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 02:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 17, 19, false, true);
--------------- EVENTS ------------------
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 02:00:00.0', 'The temperature is too high', '2020-01-01 02:08:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 03:08:00.0', 'The temperature is too high', '2020-01-01 03:14:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 04:14:00.0', 'The temperature is too high', '2020-01-01 04:20:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 05:20:00.0', 'The temperature is too high', '2020-01-01 05:26:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 00:00:00.0', 'Check the room, there is a problem', '2020-01-03 00:06:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 01:06:00.0', 'Check the room, there is a problem', '2020-01-03 01:15:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 03:15:00.0', 'The temperature is too low', '2020-01-03 03:23:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 04:23:00.0', 'The temperature is too low', '2020-01-03 04:32:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 00:00:00.0', 'The temperature is too high', '2020-01-04 00:09:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 02:09:00.0', 'The temperature is too low', '2020-01-04 02:15:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 04:15:00.0', 'Check the room, there is a problem', '2020-01-04 04:20:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 06:20:00.0', 'The temperature is too high', '2020-01-04 06:26:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-06 00:00:00.0', 'Check the room, there is a problem', '2020-01-06 00:06:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-06 02:06:00.0', 'The temperature is too low', '2020-01-06 02:12:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-06 03:12:00.0', 'Check the room, there is a problem', '2020-01-06 03:17:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-06 04:17:00.0', 'The temperature is too low', '2020-01-06 04:22:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
---------------GENERATION OF : SUNSHINE_SENSOR --------------

INSERT INTO CONNECTED_OBJECT(ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) VALUES (nextval(pg_get_serial_sequence('connected_object', 'id')), 0, 'Shandora', '192.168.0.47', '82:5a:be:01:01:47', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL', 3);
INSERT INTO NON_MEDICAL_CONNECTED_OBJECT(ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'SUNSHINE_SENSOR', currval(pg_get_serial_sequence('room', 'id')), 'point-12');
--------------- SETTINGS/CONFIGURATION ------------------
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 06:22:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 12, 1587);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 08:22:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 5, 9295);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 09:22:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 12, 315);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 10:22:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 16, 5303);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-08 00:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 9, 10023);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-08 02:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 5, 9184);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-08 03:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 19, 11948);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-08 05:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 17, 2438);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-09 00:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 17, 7610);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-09 01:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 17, 6544);
--------------- EVENTS ------------------
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 02:00:00.0', 'It is cold', '2020-01-01 02:07:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 04:07:00.0', 'It is cold', '2020-01-01 04:13:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 06:13:00.0', 'It is sunny on the outside', '2020-01-01 06:22:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 07:22:00.0', 'It is sunny on the outside', '2020-01-01 07:28:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 00:00:00.0', 'It is sunny on the outside', '2020-01-03 00:08:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 02:08:00.0', 'It is cold', '2020-01-03 02:15:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 03:15:00.0', 'Check the room, there is a problem', '2020-01-03 03:22:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 05:22:00.0', 'Check the room, there is a problem', '2020-01-03 05:31:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 00:00:00.0', 'Check the room, there is a problem', '2020-01-04 00:08:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 02:08:00.0', 'It is sunny on the outside', '2020-01-04 02:13:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 03:13:00.0', 'It is cold', '2020-01-04 03:20:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 04:20:00.0', 'It is sunny on the outside', '2020-01-04 04:29:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-06 00:00:00.0', 'It is cold', '2020-01-06 00:09:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
---------------GENERATION OF : BULB --------------

INSERT INTO CONNECTED_OBJECT(ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) VALUES (nextval(pg_get_serial_sequence('connected_object', 'id')), 0, 'Shandora', '192.168.0.48', '82:5a:be:01:01:48', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL', 4);
INSERT INTO NON_MEDICAL_CONNECTED_OBJECT(ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'BULB', currval(pg_get_serial_sequence('room', 'id')), 'point-7');
--------------- SETTINGS/CONFIGURATION ------------------
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 02:09:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#DC03CB');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 03:09:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FB0000');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 05:09:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FB0000');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 07:09:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#20EFB3');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-08 00:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FCED0A');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-08 02:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FCED0A');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-08 03:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FFA55B');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-08 04:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#196DC7');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-10 00:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#4AC62F');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-10 01:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FB0000');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-10 02:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#4AC62F');
--------------- EVENTS ------------------
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 02:00:00.0', 'Check the room, there is a problem', '2020-01-01 02:06:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 03:06:00.0', 'The bulb is providing too much heat', '2020-01-01 03:15:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 05:15:00.0', 'The bulb is providing too much heat', '2020-01-01 05:24:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 07:24:00.0', 'Check the room, there is a problem', '2020-01-01 07:31:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 00:00:00.0', 'The bulb is providing too much heat', '2020-01-03 00:06:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 01:06:00.0', 'The bulb is providing too much heat', '2020-01-03 01:12:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 02:12:00.0', 'The bulb is using too much energy', '2020-01-03 02:17:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 04:17:00.0', 'The bulb is using too much energy', '2020-01-03 04:25:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-05 00:00:00.0', 'The bulb is providing too much heat', '2020-01-05 00:08:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-05 02:08:00.0', 'Check the room, there is a problem', '2020-01-05 02:13:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-05 04:13:00.0', 'The bulb is using too much energy', '2020-01-05 04:20:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-05 06:20:00.0', 'The bulb is providing too much heat', '2020-01-05 06:29:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-06 00:00:00.0', 'The bulb is using too much energy', '2020-01-06 00:05:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-06 01:05:00.0', 'The bulb is providing too much heat', '2020-01-06 01:12:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-06 03:12:00.0', 'Check the room, there is a problem', '2020-01-06 03:18:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-06 04:18:00.0', 'Check the room, there is a problem', '2020-01-06 04:26:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
----------------------------------------------------------------------------------
----------------------------------------------------------------------------------

---------------------------------------------------------------------
------------------- ROOM N°200---------------------------------------
---------- FOR ANDERSON Locke------------------------------------
---------------------------------------------------------------------
INSERT INTO SKYPIEA_USER(id, version, last_name, first_name, username, password, user_type, last_connection_date) VALUES (nextval(pg_get_serial_sequence('skypiea_user', 'id')), 0, 'Anderson', 'Locke', 'locke', '$2a$10$9eiTJnvVlwNgpHRQVK4CRei6.nQg7q7fdAoQjrBxCaO/0kp2VA9aW', 'RESIDENT', '2020-01-01 12:00:00.000');
INSERT INTO RESIDENT(id, birth_day) VALUES (currval(pg_get_serial_sequence('skypiea_user', 'id')), '1939-12-09 09:00:00.000');
INSERT INTO ROOM(id, version, door_number, floor, width,length, height, wing, svg_point, resident_id) VALUES (nextval(pg_get_serial_sequence('room', 'id')), 0, 200, 2, 6.6, 3.0, 2.0, 'NORTH', 'room-0', currval(pg_get_serial_sequence('skypiea_user', 'id')));
---------------GENERATION OF : TEMPERATURE_CONTROLLER --------------

INSERT INTO CONNECTED_OBJECT(ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) VALUES (nextval(pg_get_serial_sequence('connected_object', 'id')), 0, 'Shandora', '192.168.0.49', '82:5a:be:01:01:49', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL', 3);
INSERT INTO NON_MEDICAL_CONNECTED_OBJECT(ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'TEMPERATURE_CONTROLLER', currval(pg_get_serial_sequence('room', 'id')), 'point-3');
--------------- SETTINGS/CONFIGURATION ------------------
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 02:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 17, 16, false, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 03:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 14, 19, false, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 05:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 13, 12, false, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 07:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 18, 15, true, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 00:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 18, 15, true, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 02:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 13, 13, false, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 03:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 22, 19, false, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 04:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 16, 15, false, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 00:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 18, 12, true, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 01:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 17, 21, false, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 03:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 13, 13, true, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 04:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 16, 17, false, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 00:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 22, 18, true, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 02:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 12, 12, false, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 04:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 22, 17, true, false);
--------------- EVENTS ------------------
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 02:00:00.0', 'Check the room, there is a problem', '2020-01-01 02:07:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 03:07:00.0', 'The temperature is too low', '2020-01-01 03:15:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 05:15:00.0', 'The temperature is too high', '2020-01-01 05:24:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 06:24:00.0', 'The temperature is too low', '2020-01-01 06:30:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 00:00:00.0', 'The temperature is too high', '2020-01-03 00:06:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 02:06:00.0', 'Check the room, there is a problem', '2020-01-03 02:14:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 03:14:00.0', 'Check the room, there is a problem', '2020-01-03 03:22:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 05:22:00.0', 'The temperature is too high', '2020-01-03 05:29:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 00:00:00.0', 'The temperature is too low', '2020-01-04 00:06:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 02:06:00.0', 'Check the room, there is a problem', '2020-01-04 02:14:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 03:14:00.0', 'Check the room, there is a problem', '2020-01-04 03:19:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 04:19:00.0', 'Check the room, there is a problem', '2020-01-04 04:26:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
---------------GENERATION OF : SUNSHINE_SENSOR --------------

INSERT INTO CONNECTED_OBJECT(ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) VALUES (nextval(pg_get_serial_sequence('connected_object', 'id')), 0, 'Shandora', '192.168.0.50', '82:5a:be:01:01:50', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL', 5);
INSERT INTO NON_MEDICAL_CONNECTED_OBJECT(ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'SUNSHINE_SENSOR', currval(pg_get_serial_sequence('room', 'id')), 'point-12');
--------------- SETTINGS/CONFIGURATION ------------------
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 05:26:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 14, 10370);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 06:26:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 13, 3116);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 08:26:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 6734);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 10:26:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 7001);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 00:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 24, 5002);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 01:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 17, 5828);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 02:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 7, 9216);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 04:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 10, 2815);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 00:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 21, 9858);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 01:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 19, 4766);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 03:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 21, 2644);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 05:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 9, 9249);
--------------- EVENTS ------------------
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 02:00:00.0', 'It is sunny on the outside', '2020-01-01 02:08:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 03:08:00.0', 'Check the room, there is a problem', '2020-01-01 03:15:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 04:15:00.0', 'It is cold', '2020-01-01 04:22:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 06:22:00.0', 'Check the room, there is a problem', '2020-01-01 06:27:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 00:00:00.0', 'Check the room, there is a problem', '2020-01-03 00:06:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 01:06:00.0', 'It is sunny on the outside', '2020-01-03 01:13:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 02:13:00.0', 'It is sunny on the outside', '2020-01-03 02:19:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 04:19:00.0', 'It is cold', '2020-01-03 04:24:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-05 00:00:00.0', 'It is cold', '2020-01-05 00:08:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-05 02:08:00.0', 'It is sunny on the outside', '2020-01-05 02:16:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-05 03:16:00.0', 'It is sunny on the outside', '2020-01-05 03:23:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-05 05:23:00.0', 'It is sunny on the outside', '2020-01-05 05:32:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
---------------GENERATION OF : BULB --------------

INSERT INTO CONNECTED_OBJECT(ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) VALUES (nextval(pg_get_serial_sequence('connected_object', 'id')), 0, 'Shandora', '192.168.0.51', '82:5a:be:01:01:51', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL', 3);
INSERT INTO NON_MEDICAL_CONNECTED_OBJECT(ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'BULB', currval(pg_get_serial_sequence('room', 'id')), 'point-7');
--------------- SETTINGS/CONFIGURATION ------------------
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 07:32:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#4AC62F');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 09:32:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FCED0A');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 10:32:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FB217A');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 12:32:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FB0000');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 12:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FCED0A');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 14:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FFA55B');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 15:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#C845FC');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 17:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FFA55B');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 12:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FB0000');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 14:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#19C7C7');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 15:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#19C7C7');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 16:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FB0000');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-09 12:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FFA55B');
--------------- EVENTS ------------------
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 01:00:00.0', 'The bulb is providing too much heat', '2020-01-01 01:08:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 02:08:00.0', 'The bulb is using too much energy', '2020-01-01 02:14:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 04:14:00.0', 'Check the room, there is a problem', '2020-01-01 04:20:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 05:20:00.0', 'Check the room, there is a problem', '2020-01-01 05:28:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 00:00:00.0', 'Check the room, there is a problem', '2020-01-02 00:09:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 01:09:00.0', 'The bulb is providing too much heat', '2020-01-02 01:18:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 02:18:00.0', 'The bulb is providing too much heat', '2020-01-02 02:26:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 03:26:00.0', 'Check the room, there is a problem', '2020-01-02 03:35:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
----------------------------------------------------------------------------------
----------------------------------------------------------------------------------

---------------------------------------------------------------------
------------------- ROOM N°201---------------------------------------
---------- FOR THOMAS Love------------------------------------
---------------------------------------------------------------------
INSERT INTO SKYPIEA_USER(id, version, last_name, first_name, username, password, user_type, last_connection_date) VALUES (nextval(pg_get_serial_sequence('skypiea_user', 'id')), 0, 'Thomas', 'Love', 'love', '$2a$10$OYvs7gHoHrAHFXt2MNlKzOPaJ2/h/4W0mDicpddAXz7Sf3CxOgDG6', 'RESIDENT', '2020-01-01 12:00:00.000');
INSERT INTO RESIDENT(id, birth_day) VALUES (currval(pg_get_serial_sequence('skypiea_user', 'id')), '1939-12-09 09:00:00.000');
INSERT INTO ROOM(id, version, door_number, floor, width,length, height, wing, svg_point, resident_id) VALUES (nextval(pg_get_serial_sequence('room', 'id')), 0, 201, 2, 6.6, 3.0, 2.0, 'NORTH', 'room-1', currval(pg_get_serial_sequence('skypiea_user', 'id')));
---------------GENERATION OF : TEMPERATURE_CONTROLLER --------------

INSERT INTO CONNECTED_OBJECT(ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) VALUES (nextval(pg_get_serial_sequence('connected_object', 'id')), 0, 'Shandora', '192.168.0.52', '82:5a:be:01:01:52', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL', 3);
INSERT INTO NON_MEDICAL_CONNECTED_OBJECT(ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'TEMPERATURE_CONTROLLER', currval(pg_get_serial_sequence('room', 'id')), 'point-12');
--------------- SETTINGS/CONFIGURATION ------------------
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 02:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 20, 14, false, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 04:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 22, 13, true, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 05:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 21, 19, false, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 07:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 22, 19, true, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-02 00:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 19, 15, true, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-02 02:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 12, 21, true, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-02 03:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 22, 17, true, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-02 05:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 22, 18, false, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 00:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 19, 21, true, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 01:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 12, 13, false, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 02:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 15, 16, true, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 04:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 14, 20, false, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 00:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 19, 21, false, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 01:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 18, 13, false, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 03:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 13, 18, false, false);
--------------- EVENTS ------------------
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 02:00:00.0', 'The temperature is too low', '2020-01-01 02:09:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 03:09:00.0', 'The temperature is too low', '2020-01-01 03:14:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 05:14:00.0', 'Check the room, there is a problem', '2020-01-01 05:20:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 06:20:00.0', 'The temperature is too low', '2020-01-01 06:29:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 00:00:00.0', 'The temperature is too high', '2020-01-02 00:05:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 01:05:00.0', 'The temperature is too low', '2020-01-02 01:10:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 02:10:00.0', 'Check the room, there is a problem', '2020-01-02 02:17:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 04:17:00.0', 'The temperature is too low', '2020-01-02 04:23:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
---------------GENERATION OF : SUNSHINE_SENSOR --------------

INSERT INTO CONNECTED_OBJECT(ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) VALUES (nextval(pg_get_serial_sequence('connected_object', 'id')), 0, 'Shandora', '192.168.0.53', '82:5a:be:01:01:53', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL', 3);
INSERT INTO NON_MEDICAL_CONNECTED_OBJECT(ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'SUNSHINE_SENSOR', currval(pg_get_serial_sequence('room', 'id')), 'point-3');
--------------- SETTINGS/CONFIGURATION ------------------
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-02 06:23:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 19, 3401);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-02 08:23:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 24, 2493);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-02 09:23:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 5, 1091);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-02 11:23:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 17, 1026);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 12:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 5, 5977);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 13:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 9, 4878);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 14:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 10, 1500);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 16:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 23, 7103);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 12:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 13, 8640);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 13:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 7, 6130);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 14:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 24, 6973);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 16:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 24, 9189);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 12:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 24, 6203);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 14:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 14, 4191);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 15:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 18, 11084);
--------------- EVENTS ------------------
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 01:00:00.0', 'It is cold', '2020-01-01 01:08:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 03:08:00.0', 'It is cold', '2020-01-01 03:17:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 05:17:00.0', 'It is cold', '2020-01-01 05:23:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 07:23:00.0', 'Check the room, there is a problem', '2020-01-01 07:31:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 00:00:00.0', 'It is cold', '2020-01-02 00:05:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 01:05:00.0', 'It is cold', '2020-01-02 01:14:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 02:14:00.0', 'Check the room, there is a problem', '2020-01-02 02:20:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 03:20:00.0', 'It is sunny on the outside', '2020-01-02 03:28:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 00:00:00.0', 'It is cold', '2020-01-03 00:06:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 02:06:00.0', 'It is cold', '2020-01-03 02:11:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 03:11:00.0', 'It is cold', '2020-01-03 03:18:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 04:18:00.0', 'It is cold', '2020-01-03 04:26:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-05 00:00:00.0', 'It is cold', '2020-01-05 00:07:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
---------------GENERATION OF : BULB --------------

INSERT INTO CONNECTED_OBJECT(ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) VALUES (nextval(pg_get_serial_sequence('connected_object', 'id')), 0, 'Shandora', '192.168.0.54', '82:5a:be:01:01:54', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL', 5);
INSERT INTO NON_MEDICAL_CONNECTED_OBJECT(ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'BULB', currval(pg_get_serial_sequence('room', 'id')), 'point-7');
--------------- SETTINGS/CONFIGURATION ------------------
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 02:07:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#4AC62F');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 04:07:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#20EFB3');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 06:07:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#4AC62F');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 07:07:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FFA55B');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 00:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#19C7C7');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 02:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FB0000');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 03:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#4AC62F');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 05:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FFA55B');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 00:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#196DC7');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 02:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#4AC62F');
--------------- EVENTS ------------------
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 02:00:00.0', 'The bulb is providing too much heat', '2020-01-01 02:07:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 03:07:00.0', 'The bulb is providing too much heat', '2020-01-01 03:13:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 04:13:00.0', 'The bulb is using too much energy', '2020-01-01 04:18:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 06:18:00.0', 'Check the room, there is a problem', '2020-01-01 06:27:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 00:00:00.0', 'The bulb is using too much energy', '2020-01-03 00:08:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 02:08:00.0', 'Check the room, there is a problem', '2020-01-03 02:16:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 03:16:00.0', 'The bulb is using too much energy', '2020-01-03 03:24:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 04:24:00.0', 'Check the room, there is a problem', '2020-01-03 04:31:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-05 00:00:00.0', 'Check the room, there is a problem', '2020-01-05 00:08:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-05 01:08:00.0', 'The bulb is using too much energy', '2020-01-05 01:17:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-05 03:17:00.0', 'The bulb is using too much energy', '2020-01-05 03:24:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
----------------------------------------------------------------------------------
----------------------------------------------------------------------------------

---------------------------------------------------------------------
------------------- ROOM N°202---------------------------------------
---------- FOR JACKSON Aldrich------------------------------------
---------------------------------------------------------------------
INSERT INTO SKYPIEA_USER(id, version, last_name, first_name, username, password, user_type, last_connection_date) VALUES (nextval(pg_get_serial_sequence('skypiea_user', 'id')), 0, 'Jackson', 'Aldrich', 'aldrich', '$2a$10$OytYtlKdZVSe3lirIN5uReZiYxGwNvfdYCbREsnriKNLfh5hZvAza', 'RESIDENT', '2020-01-01 12:00:00.000');
INSERT INTO RESIDENT(id, birth_day) VALUES (currval(pg_get_serial_sequence('skypiea_user', 'id')), '1939-12-09 09:00:00.000');
INSERT INTO ROOM(id, version, door_number, floor, width,length, height, wing, svg_point, resident_id) VALUES (nextval(pg_get_serial_sequence('room', 'id')), 0, 202, 2, 6.6, 3.0, 2.0, 'NORTH', 'room-2', currval(pg_get_serial_sequence('skypiea_user', 'id')));
---------------GENERATION OF : TEMPERATURE_CONTROLLER --------------

INSERT INTO CONNECTED_OBJECT(ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) VALUES (nextval(pg_get_serial_sequence('connected_object', 'id')), 0, 'Shandora', '192.168.0.55', '82:5a:be:01:01:55', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL', 4);
INSERT INTO NON_MEDICAL_CONNECTED_OBJECT(ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'TEMPERATURE_CONTROLLER', currval(pg_get_serial_sequence('room', 'id')), 'point-3');
--------------- SETTINGS/CONFIGURATION ------------------
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 01:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 20, 15, false, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 03:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 16, 18, true, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 04:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 15, 12, false, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 05:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 17, 15, false, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 00:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 15, 18, false, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 02:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 20, 22, true, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 04:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 15, 14, true, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 05:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 19, 14, true, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 00:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 13, 20, true, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 01:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 20, 20, true, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 03:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 18, 20, true, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 04:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 17, 15, false, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 00:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 12, 22, false, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 02:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 21, 22, true, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 03:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 17, 12, true, true);
--------------- EVENTS ------------------
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 02:00:00.0', 'Check the room, there is a problem', '2020-01-01 02:09:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 04:09:00.0', 'Check the room, there is a problem', '2020-01-01 04:15:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 06:15:00.0', 'The temperature is too low', '2020-01-01 06:22:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 07:22:00.0', 'The temperature is too low', '2020-01-01 07:30:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 00:00:00.0', 'Check the room, there is a problem', '2020-01-03 00:09:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 01:09:00.0', 'The temperature is too high', '2020-01-03 01:14:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 03:14:00.0', 'The temperature is too high', '2020-01-03 03:23:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 04:23:00.0', 'The temperature is too low', '2020-01-03 04:29:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 00:00:00.0', 'The temperature is too low', '2020-01-04 00:08:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 02:08:00.0', 'The temperature is too low', '2020-01-04 02:16:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 03:16:00.0', 'The temperature is too low', '2020-01-04 03:23:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 04:23:00.0', 'Check the room, there is a problem', '2020-01-04 04:32:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-06 00:00:00.0', 'Check the room, there is a problem', '2020-01-06 00:05:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-06 02:05:00.0', 'The temperature is too high', '2020-01-06 02:13:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-06 03:13:00.0', 'The temperature is too high', '2020-01-06 03:20:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
---------------GENERATION OF : SUNSHINE_SENSOR --------------

INSERT INTO CONNECTED_OBJECT(ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) VALUES (nextval(pg_get_serial_sequence('connected_object', 'id')), 0, 'Shandora', '192.168.0.56', '82:5a:be:01:01:56', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL', 4);
INSERT INTO NON_MEDICAL_CONNECTED_OBJECT(ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'SUNSHINE_SENSOR', currval(pg_get_serial_sequence('room', 'id')), 'point-12');
--------------- SETTINGS/CONFIGURATION ------------------
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 04:20:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 23, 11353);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 05:20:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 22, 8453);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 07:20:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 19, 2842);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 08:20:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 20, 1923);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-08 00:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 8, 5243);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-08 01:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 18, 3428);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-08 02:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 10, 1566);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-08 03:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 23, 3845);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-10 00:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 23, 10863);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-10 01:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 9, 1042);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-10 02:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 5, 10839);
--------------- EVENTS ------------------
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 02:00:00.0', 'It is sunny on the outside', '2020-01-01 02:08:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 03:08:00.0', 'It is cold', '2020-01-01 03:17:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 04:17:00.0', 'It is cold', '2020-01-01 04:22:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 06:22:00.0', 'Check the room, there is a problem', '2020-01-01 06:31:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 00:00:00.0', 'It is sunny on the outside', '2020-01-03 00:05:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 01:05:00.0', 'It is cold', '2020-01-03 01:12:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 02:12:00.0', 'It is cold', '2020-01-03 02:18:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 04:18:00.0', 'Check the room, there is a problem', '2020-01-03 04:26:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-05 00:00:00.0', 'It is cold', '2020-01-05 00:06:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-05 02:06:00.0', 'It is sunny on the outside', '2020-01-05 02:11:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-05 03:11:00.0', 'It is sunny on the outside', '2020-01-05 03:16:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
---------------GENERATION OF : BULB --------------

INSERT INTO CONNECTED_OBJECT(ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) VALUES (nextval(pg_get_serial_sequence('connected_object', 'id')), 0, 'Shandora', '192.168.0.57', '82:5a:be:01:01:57', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL', 4);
INSERT INTO NON_MEDICAL_CONNECTED_OBJECT(ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'BULB', currval(pg_get_serial_sequence('room', 'id')), 'point-7');
--------------- SETTINGS/CONFIGURATION ------------------
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 05:16:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#4AC62F');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 06:16:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#C845FC');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 08:16:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FFA55B');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 10:16:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#4AC62F');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 12:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#20EFB3');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 14:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FB0000');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 16:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FCED0A');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 17:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FFA55B');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-08 12:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#20EFB3');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-08 13:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#DC03CB');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-08 15:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FFA55B');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-08 17:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#DC03CB');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-10 12:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#196DC7');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-10 13:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#DC03CB');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-10 14:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FB217A');
--------------- EVENTS ------------------
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 01:00:00.0', 'The bulb is providing too much heat', '2020-01-01 01:06:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 03:06:00.0', 'The bulb is using too much energy', '2020-01-01 03:12:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 04:12:00.0', 'The bulb is providing too much heat', '2020-01-01 04:18:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 06:18:00.0', 'The bulb is using too much energy', '2020-01-01 06:25:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 00:00:00.0', 'Check the room, there is a problem', '2020-01-03 00:05:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 02:05:00.0', 'The bulb is providing too much heat', '2020-01-03 02:11:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 04:11:00.0', 'The bulb is providing too much heat', '2020-01-03 04:18:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 05:18:00.0', 'The bulb is using too much energy', '2020-01-03 05:27:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 00:00:00.0', 'Check the room, there is a problem', '2020-01-04 00:09:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 01:09:00.0', 'The bulb is providing too much heat', '2020-01-04 01:16:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 03:16:00.0', 'The bulb is providing too much heat', '2020-01-04 03:25:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 05:25:00.0', 'The bulb is providing too much heat', '2020-01-04 05:34:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-06 00:00:00.0', 'The bulb is using too much energy', '2020-01-06 00:05:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-06 02:05:00.0', 'Check the room, there is a problem', '2020-01-06 02:10:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
----------------------------------------------------------------------------------
----------------------------------------------------------------------------------

---------------------------------------------------------------------
------------------- ROOM N°203---------------------------------------
---------- FOR WHITE Alfred------------------------------------
---------------------------------------------------------------------
INSERT INTO SKYPIEA_USER(id, version, last_name, first_name, username, password, user_type, last_connection_date) VALUES (nextval(pg_get_serial_sequence('skypiea_user', 'id')), 0, 'White', 'Alfred', 'alfred', '$2a$10$j1b5Kk22Y9qCGHt1hmyR..DLJsor2frB/aQ3TPCGrGlZ1IDWVHahC', 'RESIDENT', '2020-01-01 12:00:00.000');
INSERT INTO RESIDENT(id, birth_day) VALUES (currval(pg_get_serial_sequence('skypiea_user', 'id')), '1939-12-09 09:00:00.000');
INSERT INTO ROOM(id, version, door_number, floor, width,length, height, wing, svg_point, resident_id) VALUES (nextval(pg_get_serial_sequence('room', 'id')), 0, 203, 2, 6.6, 3.0, 2.0, 'NORTH', 'room-3', currval(pg_get_serial_sequence('skypiea_user', 'id')));
---------------GENERATION OF : TEMPERATURE_CONTROLLER --------------

INSERT INTO CONNECTED_OBJECT(ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) VALUES (nextval(pg_get_serial_sequence('connected_object', 'id')), 0, 'Shandora', '192.168.0.58', '82:5a:be:01:01:58', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL', 4);
INSERT INTO NON_MEDICAL_CONNECTED_OBJECT(ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'TEMPERATURE_CONTROLLER', currval(pg_get_serial_sequence('room', 'id')), 'point-12');
--------------- SETTINGS/CONFIGURATION ------------------
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 01:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 12, 14, true, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 03:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 22, 15, false, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 05:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 12, 22, true, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 06:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 12, 19, true, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-02 00:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 12, 17, false, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-02 02:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 14, 14, false, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-02 03:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 18, 16, true, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-02 05:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 14, 14, false, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 00:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 13, 20, true, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 02:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 21, 18, false, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 04:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 13, 13, true, true);
--------------- EVENTS ------------------
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 02:00:00.0', 'The temperature is too low', '2020-01-01 02:09:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 04:09:00.0', 'The temperature is too low', '2020-01-01 04:14:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 05:14:00.0', 'The temperature is too high', '2020-01-01 05:19:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 07:19:00.0', 'The temperature is too low', '2020-01-01 07:28:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 00:00:00.0', 'The temperature is too high', '2020-01-03 00:09:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 02:09:00.0', 'Check the room, there is a problem', '2020-01-03 02:16:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 04:16:00.0', 'The temperature is too low', '2020-01-03 04:21:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 05:21:00.0', 'The temperature is too high', '2020-01-03 05:27:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-05 00:00:00.0', 'The temperature is too high', '2020-01-05 00:07:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-05 02:07:00.0', 'Check the room, there is a problem', '2020-01-05 02:14:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
---------------GENERATION OF : SUNSHINE_SENSOR --------------

INSERT INTO CONNECTED_OBJECT(ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) VALUES (nextval(pg_get_serial_sequence('connected_object', 'id')), 0, 'Shandora', '192.168.0.59', '82:5a:be:01:01:59', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL', 4);
INSERT INTO NON_MEDICAL_CONNECTED_OBJECT(ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'SUNSHINE_SENSOR', currval(pg_get_serial_sequence('room', 'id')), 'point-3');
--------------- SETTINGS/CONFIGURATION ------------------
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 04:14:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 5, 4204);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 06:14:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 2380);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 08:14:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 22, 1455);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 10:14:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 14, 9363);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 12:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 5, 4662);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 13:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 21, 11223);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 14:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 21, 1287);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 15:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 20, 1812);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 12:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 23, 3055);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 14:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 2884);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 16:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 6, 9098);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 17:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 14, 2729);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-08 12:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 9, 11820);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-08 14:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10264);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-08 15:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 17, 7089);
--------------- EVENTS ------------------
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 02:00:00.0', 'It is cold', '2020-01-01 02:09:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 04:09:00.0', 'Check the room, there is a problem', '2020-01-01 04:17:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 06:17:00.0', 'It is cold', '2020-01-01 06:24:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 08:24:00.0', 'It is cold', '2020-01-01 08:29:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 00:00:00.0', 'It is cold', '2020-01-03 00:07:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 01:07:00.0', 'Check the room, there is a problem', '2020-01-03 01:16:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 03:16:00.0', 'It is cold', '2020-01-03 03:22:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 04:22:00.0', 'It is cold', '2020-01-03 04:30:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 00:00:00.0', 'Check the room, there is a problem', '2020-01-04 00:09:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
---------------GENERATION OF : BULB --------------

INSERT INTO CONNECTED_OBJECT(ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) VALUES (nextval(pg_get_serial_sequence('connected_object', 'id')), 0, 'Shandora', '192.168.0.60', '82:5a:be:01:01:60', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL', 5);
INSERT INTO NON_MEDICAL_CONNECTED_OBJECT(ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'BULB', currval(pg_get_serial_sequence('room', 'id')), 'point-7');
--------------- SETTINGS/CONFIGURATION ------------------
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 02:09:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#4AC62F');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 03:09:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#20EFB3');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 05:09:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#C845FC');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 07:09:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#C845FC');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 00:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FB0000');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 01:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#4AC62F');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 02:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#19C7C7');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 03:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#19C7C7');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 00:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FB217A');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 02:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FFA55B');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 04:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FB0000');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 06:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FCED0A');
--------------- EVENTS ------------------
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 02:00:00.0', 'The bulb is using too much energy', '2020-01-01 02:05:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 03:05:00.0', 'Check the room, there is a problem', '2020-01-01 03:11:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 04:11:00.0', 'The bulb is using too much energy', '2020-01-01 04:17:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 05:17:00.0', 'The bulb is providing too much heat', '2020-01-01 05:25:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 00:00:00.0', 'Check the room, there is a problem', '2020-01-02 00:06:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 02:06:00.0', 'The bulb is providing too much heat', '2020-01-02 02:15:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 03:15:00.0', 'The bulb is providing too much heat', '2020-01-02 03:22:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 04:22:00.0', 'Check the room, there is a problem', '2020-01-02 04:29:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
----------------------------------------------------------------------------------
----------------------------------------------------------------------------------

---------------------------------------------------------------------
------------------- ROOM N°204---------------------------------------
---------- FOR HARRIS Arley------------------------------------
---------------------------------------------------------------------
INSERT INTO SKYPIEA_USER(id, version, last_name, first_name, username, password, user_type, last_connection_date) VALUES (nextval(pg_get_serial_sequence('skypiea_user', 'id')), 0, 'Harris', 'Arley', 'arley', '$2a$10$g.qDe/SKmNw/zlpgzQfZ5..yAe/sUjGs3trB9lU03glk/LNiFXoc2', 'RESIDENT', '2020-01-01 12:00:00.000');
INSERT INTO RESIDENT(id, birth_day) VALUES (currval(pg_get_serial_sequence('skypiea_user', 'id')), '1939-12-09 09:00:00.000');
INSERT INTO ROOM(id, version, door_number, floor, width,length, height, wing, svg_point, resident_id) VALUES (nextval(pg_get_serial_sequence('room', 'id')), 0, 204, 2, 6.6, 3.0, 2.0, 'NORTH', 'room-4', currval(pg_get_serial_sequence('skypiea_user', 'id')));
---------------GENERATION OF : TEMPERATURE_CONTROLLER --------------

INSERT INTO CONNECTED_OBJECT(ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) VALUES (nextval(pg_get_serial_sequence('connected_object', 'id')), 0, 'Shandora', '192.168.0.61', '82:5a:be:01:01:61', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL', 4);
INSERT INTO NON_MEDICAL_CONNECTED_OBJECT(ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'TEMPERATURE_CONTROLLER', currval(pg_get_serial_sequence('room', 'id')), 'point-12');
--------------- SETTINGS/CONFIGURATION ------------------
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 02:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 20, 14, true, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 03:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 18, 21, true, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 04:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 21, 14, false, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 06:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 17, 19, true, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-02 00:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 17, 15, true, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-02 02:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 20, 12, false, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-02 03:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 20, 22, false, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-02 05:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 16, 19, false, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 00:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 14, 14, true, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 01:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 20, 17, true, true);
--------------- EVENTS ------------------
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 01:00:00.0', 'Check the room, there is a problem', '2020-01-01 01:09:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 03:09:00.0', 'Check the room, there is a problem', '2020-01-01 03:14:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 04:14:00.0', 'The temperature is too low', '2020-01-01 04:19:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 06:19:00.0', 'The temperature is too low', '2020-01-01 06:28:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 00:00:00.0', 'The temperature is too high', '2020-01-03 00:09:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 02:09:00.0', 'Check the room, there is a problem', '2020-01-03 02:17:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 04:17:00.0', 'The temperature is too low', '2020-01-03 04:26:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 05:26:00.0', 'The temperature is too low', '2020-01-03 05:33:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-05 00:00:00.0', 'The temperature is too low', '2020-01-05 00:05:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-05 01:05:00.0', 'The temperature is too low', '2020-01-05 01:12:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-05 02:12:00.0', 'The temperature is too low', '2020-01-05 02:21:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-05 04:21:00.0', 'The temperature is too high', '2020-01-05 04:27:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-07 00:00:00.0', 'Check the room, there is a problem', '2020-01-07 00:05:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-07 01:05:00.0', 'Check the room, there is a problem', '2020-01-07 01:11:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-07 02:11:00.0', 'The temperature is too low', '2020-01-07 02:17:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-07 04:17:00.0', 'Check the room, there is a problem', '2020-01-07 04:25:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
---------------GENERATION OF : SUNSHINE_SENSOR --------------

INSERT INTO CONNECTED_OBJECT(ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) VALUES (nextval(pg_get_serial_sequence('connected_object', 'id')), 0, 'Shandora', '192.168.0.62', '82:5a:be:01:01:62', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL', 4);
INSERT INTO NON_MEDICAL_CONNECTED_OBJECT(ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'SUNSHINE_SENSOR', currval(pg_get_serial_sequence('room', 'id')), 'point-7');
--------------- SETTINGS/CONFIGURATION ------------------
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 05:25:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 20, 4246);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 07:25:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 10, 326);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 09:25:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 17, 4806);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 11:25:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 13, 6448);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-09 12:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 6, 9967);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-09 13:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 17, 5267);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-09 15:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 18, 10414);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-09 17:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 19, 4630);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-10 12:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 5, 4444);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-10 14:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 9, 9617);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-10 15:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 6, 3779);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-10 17:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 18, 9164);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-12 12:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 9413);
--------------- EVENTS ------------------
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 02:00:00.0', 'It is sunny on the outside', '2020-01-01 02:07:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 03:07:00.0', 'It is sunny on the outside', '2020-01-01 03:15:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 04:15:00.0', 'Check the room, there is a problem', '2020-01-01 04:24:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 06:24:00.0', 'It is sunny on the outside', '2020-01-01 06:31:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 00:00:00.0', 'It is cold', '2020-01-02 00:09:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 02:09:00.0', 'It is cold', '2020-01-02 02:17:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 03:17:00.0', 'Check the room, there is a problem', '2020-01-02 03:25:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 04:25:00.0', 'It is sunny on the outside', '2020-01-02 04:32:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 00:00:00.0', 'It is cold', '2020-01-03 00:08:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 01:08:00.0', 'Check the room, there is a problem', '2020-01-03 01:16:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 02:16:00.0', 'Check the room, there is a problem', '2020-01-03 02:25:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 04:25:00.0', 'It is cold', '2020-01-03 04:32:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 00:00:00.0', 'It is cold', '2020-01-04 00:06:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 02:06:00.0', 'It is cold', '2020-01-04 02:12:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 03:12:00.0', 'It is cold', '2020-01-04 03:21:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
---------------GENERATION OF : BULB --------------

INSERT INTO CONNECTED_OBJECT(ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) VALUES (nextval(pg_get_serial_sequence('connected_object', 'id')), 0, 'Shandora', '192.168.0.63', '82:5a:be:01:01:63', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL', 4);
INSERT INTO NON_MEDICAL_CONNECTED_OBJECT(ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'BULB', currval(pg_get_serial_sequence('room', 'id')), 'point-3');
--------------- SETTINGS/CONFIGURATION ------------------
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 04:21:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#4AC62F');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 05:21:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#DC03CB');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 06:21:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FB217A');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 08:21:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FFA55B');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 00:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#19C7C7');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 02:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#19C7C7');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 03:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FB217A');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 04:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#196DC7');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 00:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#19C7C7');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 02:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#DC03CB');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 03:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FCED0A');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 05:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#19C7C7');
--------------- EVENTS ------------------
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 02:00:00.0', 'The bulb is using too much energy', '2020-01-01 02:09:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 03:09:00.0', 'The bulb is using too much energy', '2020-01-01 03:15:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 04:15:00.0', 'Check the room, there is a problem', '2020-01-01 04:24:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 06:24:00.0', 'The bulb is providing too much heat', '2020-01-01 06:29:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 00:00:00.0', 'The bulb is providing too much heat', '2020-01-03 00:07:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 01:07:00.0', 'Check the room, there is a problem', '2020-01-03 01:16:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 03:16:00.0', 'The bulb is using too much energy', '2020-01-03 03:21:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 05:21:00.0', 'The bulb is providing too much heat', '2020-01-03 05:27:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 00:00:00.0', 'Check the room, there is a problem', '2020-01-04 00:07:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
----------------------------------------------------------------------------------
----------------------------------------------------------------------------------

---------------------------------------------------------------------
------------------- ROOM N°205---------------------------------------
---------- FOR MARTIN Arlo------------------------------------
---------------------------------------------------------------------
INSERT INTO SKYPIEA_USER(id, version, last_name, first_name, username, password, user_type, last_connection_date) VALUES (nextval(pg_get_serial_sequence('skypiea_user', 'id')), 0, 'Martin', 'Arlo', 'arlo', '$2a$10$2DG6aIDK6bmQWjZo7Pj/0O3XNS373OkcjrmyXI12qQADhtYELbyle', 'RESIDENT', '2020-01-01 12:00:00.000');
INSERT INTO RESIDENT(id, birth_day) VALUES (currval(pg_get_serial_sequence('skypiea_user', 'id')), '1939-12-09 09:00:00.000');
INSERT INTO ROOM(id, version, door_number, floor, width,length, height, wing, svg_point, resident_id) VALUES (nextval(pg_get_serial_sequence('room', 'id')), 0, 205, 2, 6.6, 3.0, 2.0, 'NORTH', 'room-5', currval(pg_get_serial_sequence('skypiea_user', 'id')));
---------------GENERATION OF : TEMPERATURE_CONTROLLER --------------

INSERT INTO CONNECTED_OBJECT(ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) VALUES (nextval(pg_get_serial_sequence('connected_object', 'id')), 0, 'Shandora', '192.168.0.64', '82:5a:be:01:01:64', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL', 4);
INSERT INTO NON_MEDICAL_CONNECTED_OBJECT(ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'TEMPERATURE_CONTROLLER', currval(pg_get_serial_sequence('room', 'id')), 'point-12');
--------------- SETTINGS/CONFIGURATION ------------------
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 01:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 17, 16, false, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 03:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 12, 19, true, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 05:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 17, 15, false, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 07:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 17, 14, true, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 00:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 22, 19, false, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 01:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 15, 14, true, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 03:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 18, 18, false, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 05:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 22, 22, true, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 00:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 16, 14, true, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 02:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 16, 20, true, false);
--------------- EVENTS ------------------
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 01:00:00.0', 'The temperature is too low', '2020-01-01 01:08:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 03:08:00.0', 'The temperature is too high', '2020-01-01 03:15:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 04:15:00.0', 'The temperature is too low', '2020-01-01 04:21:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 06:21:00.0', 'The temperature is too low', '2020-01-01 06:27:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 00:00:00.0', 'Check the room, there is a problem', '2020-01-02 00:06:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 02:06:00.0', 'The temperature is too low', '2020-01-02 02:12:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 04:12:00.0', 'Check the room, there is a problem', '2020-01-02 04:17:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 05:17:00.0', 'Check the room, there is a problem', '2020-01-02 05:24:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 00:00:00.0', 'The temperature is too high', '2020-01-03 00:09:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
---------------GENERATION OF : SUNSHINE_SENSOR --------------

INSERT INTO CONNECTED_OBJECT(ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) VALUES (nextval(pg_get_serial_sequence('connected_object', 'id')), 0, 'Shandora', '192.168.0.65', '82:5a:be:01:01:65', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL', 5);
INSERT INTO NON_MEDICAL_CONNECTED_OBJECT(ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'SUNSHINE_SENSOR', currval(pg_get_serial_sequence('room', 'id')), 'point-3');
--------------- SETTINGS/CONFIGURATION ------------------
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 02:09:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 11, 8158);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 03:09:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 6, 5941);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 04:09:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 18, 2746);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 06:09:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 22, 7437);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 00:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 8, 10452);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 01:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 14, 2644);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 03:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 22, 5050);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 05:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 24, 11127);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 00:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 16, 8641);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 02:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 13, 8161);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 03:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 1177);
--------------- EVENTS ------------------
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 01:00:00.0', 'It is sunny on the outside', '2020-01-01 01:05:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 03:05:00.0', 'It is cold', '2020-01-01 03:13:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 05:13:00.0', 'It is sunny on the outside', '2020-01-01 05:22:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 06:22:00.0', 'Check the room, there is a problem', '2020-01-01 06:31:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 00:00:00.0', 'It is cold', '2020-01-03 00:05:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 01:05:00.0', 'It is sunny on the outside', '2020-01-03 01:12:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 02:12:00.0', 'It is cold', '2020-01-03 02:20:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 03:20:00.0', 'It is cold', '2020-01-03 03:29:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-05 00:00:00.0', 'Check the room, there is a problem', '2020-01-05 00:09:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-05 01:09:00.0', 'It is cold', '2020-01-05 01:18:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-05 03:18:00.0', 'It is cold', '2020-01-05 03:27:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-05 05:27:00.0', 'It is sunny on the outside', '2020-01-05 05:34:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-07 00:00:00.0', 'It is cold', '2020-01-07 00:07:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-07 01:07:00.0', 'Check the room, there is a problem', '2020-01-07 01:16:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-07 03:16:00.0', 'Check the room, there is a problem', '2020-01-07 03:22:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
---------------GENERATION OF : BULB --------------

INSERT INTO CONNECTED_OBJECT(ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) VALUES (nextval(pg_get_serial_sequence('connected_object', 'id')), 0, 'Shandora', '192.168.0.66', '82:5a:be:01:01:66', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL', 4);
INSERT INTO NON_MEDICAL_CONNECTED_OBJECT(ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'BULB', currval(pg_get_serial_sequence('room', 'id')), 'point-7');
--------------- SETTINGS/CONFIGURATION ------------------
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 04:22:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#4AC62F');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 06:22:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#4AC62F');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 07:22:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FB217A');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 09:22:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FB0000');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-09 00:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#C845FC');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-09 01:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#19C7C7');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-09 02:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#DC03CB');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-09 04:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#19C7C7');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-11 00:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#C845FC');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-11 02:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FB0000');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-11 04:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#4AC62F');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-11 06:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#4AC62F');
--------------- EVENTS ------------------
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 02:00:00.0', 'The bulb is providing too much heat', '2020-01-01 02:09:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 03:09:00.0', 'Check the room, there is a problem', '2020-01-01 03:15:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 04:15:00.0', 'The bulb is using too much energy', '2020-01-01 04:20:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 05:20:00.0', 'The bulb is using too much energy', '2020-01-01 05:28:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 00:00:00.0', 'The bulb is providing too much heat', '2020-01-03 00:09:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 02:09:00.0', 'Check the room, there is a problem', '2020-01-03 02:17:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 04:17:00.0', 'The bulb is using too much energy', '2020-01-03 04:22:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 06:22:00.0', 'Check the room, there is a problem', '2020-01-03 06:27:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 00:00:00.0', 'The bulb is using too much energy', '2020-01-04 00:07:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 01:07:00.0', 'Check the room, there is a problem', '2020-01-04 01:14:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 03:14:00.0', 'Check the room, there is a problem', '2020-01-04 03:23:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 05:23:00.0', 'Check the room, there is a problem', '2020-01-04 05:32:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
----------------------------------------------------------------------------------
----------------------------------------------------------------------------------

---------------------------------------------------------------------
------------------- ROOM N°206---------------------------------------
---------- FOR THOMPSON Armstrong------------------------------------
---------------------------------------------------------------------
INSERT INTO SKYPIEA_USER(id, version, last_name, first_name, username, password, user_type, last_connection_date) VALUES (nextval(pg_get_serial_sequence('skypiea_user', 'id')), 0, 'Thompson', 'Armstrong', 'armstrong', '$2a$10$t9FMsvlmslYUuEvpgrGUVud4PQpJ6vqS617ZoQWWSs2gPZ.D.V3/G', 'RESIDENT', '2020-01-01 12:00:00.000');
INSERT INTO RESIDENT(id, birth_day) VALUES (currval(pg_get_serial_sequence('skypiea_user', 'id')), '1939-12-09 09:00:00.000');
INSERT INTO ROOM(id, version, door_number, floor, width,length, height, wing, svg_point, resident_id) VALUES (nextval(pg_get_serial_sequence('room', 'id')), 0, 206, 2, 6.6, 3.0, 2.0, 'NORTH', 'room-6', currval(pg_get_serial_sequence('skypiea_user', 'id')));
---------------GENERATION OF : TEMPERATURE_CONTROLLER --------------

INSERT INTO CONNECTED_OBJECT(ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) VALUES (nextval(pg_get_serial_sequence('connected_object', 'id')), 0, 'Shandora', '192.168.0.67', '82:5a:be:01:01:67', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL', 4);
INSERT INTO NON_MEDICAL_CONNECTED_OBJECT(ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'TEMPERATURE_CONTROLLER', currval(pg_get_serial_sequence('room', 'id')), 'point-7');
--------------- SETTINGS/CONFIGURATION ------------------
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 02:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 14, 19, false, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 04:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 22, 21, true, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 06:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 16, 16, false, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 07:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 17, 15, false, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 00:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 14, 19, false, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 02:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 14, 13, true, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 04:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 12, 17, false, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 05:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 16, 16, false, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 00:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 15, 15, true, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 02:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 14, 14, true, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 04:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 13, 19, true, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 05:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 16, 19, true, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 00:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 20, 20, false, false);
--------------- EVENTS ------------------
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 01:00:00.0', 'The temperature is too high', '2020-01-01 01:09:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 02:09:00.0', 'The temperature is too low', '2020-01-01 02:17:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 03:17:00.0', 'The temperature is too low', '2020-01-01 03:22:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 05:22:00.0', 'Check the room, there is a problem', '2020-01-01 05:30:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 00:00:00.0', 'The temperature is too high', '2020-01-02 00:06:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 01:06:00.0', 'The temperature is too low', '2020-01-02 01:11:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 03:11:00.0', 'The temperature is too high', '2020-01-02 03:20:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 05:20:00.0', 'The temperature is too high', '2020-01-02 05:29:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 00:00:00.0', 'Check the room, there is a problem', '2020-01-04 00:06:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 01:06:00.0', 'The temperature is too low', '2020-01-04 01:11:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 02:11:00.0', 'The temperature is too high', '2020-01-04 02:17:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
---------------GENERATION OF : SUNSHINE_SENSOR --------------

INSERT INTO CONNECTED_OBJECT(ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) VALUES (nextval(pg_get_serial_sequence('connected_object', 'id')), 0, 'Shandora', '192.168.0.68', '82:5a:be:01:01:68', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL', 4);
INSERT INTO NON_MEDICAL_CONNECTED_OBJECT(ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'SUNSHINE_SENSOR', currval(pg_get_serial_sequence('room', 'id')), 'point-12');
--------------- SETTINGS/CONFIGURATION ------------------
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 04:17:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 10, 6910);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 05:17:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 7, 5184);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 06:17:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 16, 1961);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 07:17:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 21, 8489);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 00:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 13, 6449);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 01:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 16, 4694);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 03:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 13, 8803);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 05:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 12, 2456);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 00:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 22, 3931);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 01:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 17, 2612);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 03:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 5, 10012);
--------------- EVENTS ------------------
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 01:00:00.0', 'It is sunny on the outside', '2020-01-01 01:05:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 02:05:00.0', 'It is cold', '2020-01-01 02:11:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 04:11:00.0', 'It is sunny on the outside', '2020-01-01 04:20:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 05:20:00.0', 'Check the room, there is a problem', '2020-01-01 05:26:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 00:00:00.0', 'Check the room, there is a problem', '2020-01-03 00:07:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 01:07:00.0', 'It is cold', '2020-01-03 01:15:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 02:15:00.0', 'Check the room, there is a problem', '2020-01-03 02:24:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 03:24:00.0', 'Check the room, there is a problem', '2020-01-03 03:30:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
---------------GENERATION OF : BULB --------------

INSERT INTO CONNECTED_OBJECT(ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) VALUES (nextval(pg_get_serial_sequence('connected_object', 'id')), 0, 'Shandora', '192.168.0.69', '82:5a:be:01:01:69', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL', 3);
INSERT INTO NON_MEDICAL_CONNECTED_OBJECT(ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'BULB', currval(pg_get_serial_sequence('room', 'id')), 'point-3');
--------------- SETTINGS/CONFIGURATION ------------------
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 04:30:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FCED0A');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 06:30:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#4AC62F');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 08:30:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FFA55B');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 09:30:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#C845FC');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 00:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#4AC62F');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 02:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#19C7C7');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 03:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#196DC7');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 04:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FFA55B');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 00:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FB0000');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 01:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#20EFB3');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 03:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FCED0A');
--------------- EVENTS ------------------
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 01:00:00.0', 'The bulb is using too much energy', '2020-01-01 01:06:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 03:06:00.0', 'The bulb is providing too much heat', '2020-01-01 03:11:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 04:11:00.0', 'The bulb is providing too much heat', '2020-01-01 04:19:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 06:19:00.0', 'Check the room, there is a problem', '2020-01-01 06:28:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 00:00:00.0', 'Check the room, there is a problem', '2020-01-03 00:09:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 01:09:00.0', 'The bulb is using too much energy', '2020-01-03 01:18:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 02:18:00.0', 'The bulb is providing too much heat', '2020-01-03 02:24:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 04:24:00.0', 'The bulb is using too much energy', '2020-01-03 04:31:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 00:00:00.0', 'Check the room, there is a problem', '2020-01-04 00:06:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 01:06:00.0', 'The bulb is using too much energy', '2020-01-04 01:15:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 02:15:00.0', 'Check the room, there is a problem', '2020-01-04 02:21:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 03:21:00.0', 'The bulb is using too much energy', '2020-01-04 03:28:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-05 00:00:00.0', 'The bulb is providing too much heat', '2020-01-05 00:08:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-05 01:08:00.0', 'The bulb is using too much energy', '2020-01-05 01:17:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-05 03:17:00.0', 'The bulb is providing too much heat', '2020-01-05 03:25:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-05 05:25:00.0', 'The bulb is providing too much heat', '2020-01-05 05:33:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-07 00:00:00.0', 'The bulb is providing too much heat', '2020-01-07 00:07:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
----------------------------------------------------------------------------------
----------------------------------------------------------------------------------

---------------------------------------------------------------------
------------------- ROOM N°207---------------------------------------
---------- FOR GARCIA Arundel------------------------------------
---------------------------------------------------------------------
INSERT INTO SKYPIEA_USER(id, version, last_name, first_name, username, password, user_type, last_connection_date) VALUES (nextval(pg_get_serial_sequence('skypiea_user', 'id')), 0, 'Garcia', 'Arundel', 'arundel', '$2a$10$u394ixZUl7BLtPuowmxZ.u9qBOVJ43q0yvhLi.9KwcOGW1/tj1y5i', 'RESIDENT', '2020-01-01 12:00:00.000');
INSERT INTO RESIDENT(id, birth_day) VALUES (currval(pg_get_serial_sequence('skypiea_user', 'id')), '1939-12-09 09:00:00.000');
INSERT INTO ROOM(id, version, door_number, floor, width,length, height, wing, svg_point, resident_id) VALUES (nextval(pg_get_serial_sequence('room', 'id')), 0, 207, 2, 6.6, 3.0, 2.0, 'NORTH', 'room-7', currval(pg_get_serial_sequence('skypiea_user', 'id')));
---------------GENERATION OF : TEMPERATURE_CONTROLLER --------------

INSERT INTO CONNECTED_OBJECT(ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) VALUES (nextval(pg_get_serial_sequence('connected_object', 'id')), 0, 'Shandora', '192.168.0.70', '82:5a:be:01:01:70', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL', 3);
INSERT INTO NON_MEDICAL_CONNECTED_OBJECT(ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'TEMPERATURE_CONTROLLER', currval(pg_get_serial_sequence('room', 'id')), 'point-12');
--------------- SETTINGS/CONFIGURATION ------------------
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 02:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 19, 17, true, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 04:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 12, 19, true, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 06:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 15, 16, false, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 07:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 15, 12, true, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 00:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 14, 21, false, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 02:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 13, 16, true, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 03:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 13, 12, true, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 04:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 21, 14, true, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 00:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 13, 12, false, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 02:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 15, 14, true, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 03:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 16, 16, true, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 05:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 14, 16, true, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 00:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 12, 18, true, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 01:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 22, 14, false, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 02:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 16, 15, false, false);
--------------- EVENTS ------------------
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 01:00:00.0', 'The temperature is too low', '2020-01-01 01:09:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 02:09:00.0', 'The temperature is too low', '2020-01-01 02:15:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 04:15:00.0', 'Check the room, there is a problem', '2020-01-01 04:21:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 06:21:00.0', 'Check the room, there is a problem', '2020-01-01 06:30:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 00:00:00.0', 'Check the room, there is a problem', '2020-01-03 00:06:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 02:06:00.0', 'Check the room, there is a problem', '2020-01-03 02:15:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 04:15:00.0', 'The temperature is too low', '2020-01-03 04:20:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 06:20:00.0', 'Check the room, there is a problem', '2020-01-03 06:25:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 00:00:00.0', 'The temperature is too low', '2020-01-04 00:07:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 01:07:00.0', 'Check the room, there is a problem', '2020-01-04 01:12:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 02:12:00.0', 'The temperature is too low', '2020-01-04 02:19:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 03:19:00.0', 'Check the room, there is a problem', '2020-01-04 03:27:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
---------------GENERATION OF : SUNSHINE_SENSOR --------------

INSERT INTO CONNECTED_OBJECT(ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) VALUES (nextval(pg_get_serial_sequence('connected_object', 'id')), 0, 'Shandora', '192.168.0.71', '82:5a:be:01:01:71', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL', 5);
INSERT INTO NON_MEDICAL_CONNECTED_OBJECT(ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'SUNSHINE_SENSOR', currval(pg_get_serial_sequence('room', 'id')), 'point-3');
--------------- SETTINGS/CONFIGURATION ------------------
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 05:27:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 13, 8010);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 06:27:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 8, 1103);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 08:27:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 16, 968);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 09:27:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 8, 5843);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 00:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 22, 1101);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 02:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 21, 2381);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 03:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 11, 3077);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 04:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 24, 7811);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-08 00:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 7220);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-08 01:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 21, 653);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-08 02:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 24, 2429);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-08 03:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 24, 9482);
--------------- EVENTS ------------------
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 02:00:00.0', 'It is cold', '2020-01-01 02:07:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 03:07:00.0', 'It is sunny on the outside', '2020-01-01 03:13:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 04:13:00.0', 'It is sunny on the outside', '2020-01-01 04:19:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 05:19:00.0', 'Check the room, there is a problem', '2020-01-01 05:24:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 00:00:00.0', 'It is cold', '2020-01-03 00:07:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 02:07:00.0', 'Check the room, there is a problem', '2020-01-03 02:16:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 03:16:00.0', 'It is sunny on the outside', '2020-01-03 03:25:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 05:25:00.0', 'Check the room, there is a problem', '2020-01-03 05:34:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-05 00:00:00.0', 'It is cold', '2020-01-05 00:08:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-05 02:08:00.0', 'Check the room, there is a problem', '2020-01-05 02:15:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-05 04:15:00.0', 'Check the room, there is a problem', '2020-01-05 04:22:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
---------------GENERATION OF : BULB --------------

INSERT INTO CONNECTED_OBJECT(ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) VALUES (nextval(pg_get_serial_sequence('connected_object', 'id')), 0, 'Shandora', '192.168.0.72', '82:5a:be:01:01:72', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL', 3);
INSERT INTO NON_MEDICAL_CONNECTED_OBJECT(ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'BULB', currval(pg_get_serial_sequence('room', 'id')), 'point-7');
--------------- SETTINGS/CONFIGURATION ------------------
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 05:22:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#19C7C7');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 07:22:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FB0000');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 09:22:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FB217A');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 10:22:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#196DC7');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 00:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#19C7C7');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 01:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FB217A');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 02:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FB0000');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 04:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#19C7C7');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-09 00:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#196DC7');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-09 02:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FCED0A');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-09 03:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#19C7C7');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-09 05:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FFA55B');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-11 00:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#DC03CB');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-11 02:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#4AC62F');
--------------- EVENTS ------------------
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 01:00:00.0', 'Check the room, there is a problem', '2020-01-01 01:06:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 03:06:00.0', 'Check the room, there is a problem', '2020-01-01 03:11:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 05:11:00.0', 'Check the room, there is a problem', '2020-01-01 05:20:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 07:20:00.0', 'The bulb is using too much energy', '2020-01-01 07:25:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 00:00:00.0', 'Check the room, there is a problem', '2020-01-03 00:05:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 01:05:00.0', 'The bulb is using too much energy', '2020-01-03 01:13:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 02:13:00.0', 'The bulb is using too much energy', '2020-01-03 02:21:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 04:21:00.0', 'Check the room, there is a problem', '2020-01-03 04:26:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 00:00:00.0', 'Check the room, there is a problem', '2020-01-04 00:06:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 01:06:00.0', 'The bulb is using too much energy', '2020-01-04 01:11:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 03:11:00.0', 'Check the room, there is a problem', '2020-01-04 03:17:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 05:17:00.0', 'The bulb is providing too much heat', '2020-01-04 05:23:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-06 00:00:00.0', 'The bulb is using too much energy', '2020-01-06 00:06:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-06 02:06:00.0', 'Check the room, there is a problem', '2020-01-06 02:15:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
----------------------------------------------------------------------------------
----------------------------------------------------------------------------------

---------------------------------------------------------------------
------------------- ROOM N°208---------------------------------------
---------- FOR MARTINEZ Ashley------------------------------------
---------------------------------------------------------------------
INSERT INTO SKYPIEA_USER(id, version, last_name, first_name, username, password, user_type, last_connection_date) VALUES (nextval(pg_get_serial_sequence('skypiea_user', 'id')), 0, 'Martinez', 'Ashley', 'ashley', '$2a$10$bNIBXrZcrUBfIOIzUOMvzO.sBR6DH7BFjqxLyTNfsz0PUdMtuCGke', 'RESIDENT', '2020-01-01 12:00:00.000');
INSERT INTO RESIDENT(id, birth_day) VALUES (currval(pg_get_serial_sequence('skypiea_user', 'id')), '1939-12-09 09:00:00.000');
INSERT INTO ROOM(id, version, door_number, floor, width,length, height, wing, svg_point, resident_id) VALUES (nextval(pg_get_serial_sequence('room', 'id')), 0, 208, 2, 6.6, 3.0, 2.0, 'NORTH', 'room-8', currval(pg_get_serial_sequence('skypiea_user', 'id')));
---------------GENERATION OF : TEMPERATURE_CONTROLLER --------------

INSERT INTO CONNECTED_OBJECT(ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) VALUES (nextval(pg_get_serial_sequence('connected_object', 'id')), 0, 'Shandora', '192.168.0.73', '82:5a:be:01:01:73', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL', 5);
INSERT INTO NON_MEDICAL_CONNECTED_OBJECT(ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'TEMPERATURE_CONTROLLER', currval(pg_get_serial_sequence('room', 'id')), 'point-12');
--------------- SETTINGS/CONFIGURATION ------------------
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 01:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 12, 18, true, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 03:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 15, 15, false, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 05:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 16, 15, false, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-01 06:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 16, 18, true, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 00:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 12, 14, false, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 02:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 12, 13, false, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 04:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 12, 18, false, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 05:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 15, 16, true, true);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 00:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 20, 19, false, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 02:00:00.0', 'OFF');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 17, 15, true, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 03:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 17, 20, true, false);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 04:00:00.0', 'ON');
INSERT INTO TEMPERATURE_CONTROLLER VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, 20, 21, true, false);
--------------- EVENTS ------------------
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 02:00:00.0', 'The temperature is too high', '2020-01-01 02:08:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 04:08:00.0', 'Check the room, there is a problem', '2020-01-01 04:13:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 05:13:00.0', 'The temperature is too low', '2020-01-01 05:19:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 07:19:00.0', 'The temperature is too high', '2020-01-01 07:26:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 00:00:00.0', 'The temperature is too high', '2020-01-03 00:07:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 02:07:00.0', 'The temperature is too high', '2020-01-03 02:12:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 03:12:00.0', 'The temperature is too high', '2020-01-03 03:21:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-03 04:21:00.0', 'Check the room, there is a problem', '2020-01-03 04:27:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
---------------GENERATION OF : SUNSHINE_SENSOR --------------

INSERT INTO CONNECTED_OBJECT(ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) VALUES (nextval(pg_get_serial_sequence('connected_object', 'id')), 0, 'Shandora', '192.168.0.74', '82:5a:be:01:01:74', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL', 3);
INSERT INTO NON_MEDICAL_CONNECTED_OBJECT(ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'SUNSHINE_SENSOR', currval(pg_get_serial_sequence('room', 'id')), 'point-7');
--------------- SETTINGS/CONFIGURATION ------------------
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 05:27:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 23, 7964);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 07:27:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 17, 1487);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 09:27:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 24, 9153);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-03 10:27:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 6, 7210);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 12:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 6, 11208);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 14:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 24, 6095);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 15:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 11, 4107);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 16:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 8, 5429);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 12:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 22, 2069);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 13:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 7, 305);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 14:00:00.0', 'ON');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 16, 6515);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-06 16:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 11, 8575);
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-08 12:00:00.0', 'OFF');
INSERT INTO SUNSHINE_SENSOR VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, 10, 1293);
--------------- EVENTS ------------------
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 01:00:00.0', 'It is sunny on the outside', '2020-01-01 01:06:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 03:06:00.0', 'It is cold', '2020-01-01 03:14:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 05:14:00.0', 'It is sunny on the outside', '2020-01-01 05:23:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 06:23:00.0', 'It is cold', '2020-01-01 06:31:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 00:00:00.0', 'Check the room, there is a problem', '2020-01-02 00:07:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 02:07:00.0', 'Check the room, there is a problem', '2020-01-02 02:16:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 04:16:00.0', 'Check the room, there is a problem', '2020-01-02 04:21:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 05:21:00.0', 'It is sunny on the outside', '2020-01-02 05:30:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 00:00:00.0', 'It is sunny on the outside', '2020-01-04 00:09:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 02:09:00.0', 'It is cold', '2020-01-04 02:18:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 04:18:00.0', 'It is cold', '2020-01-04 04:25:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
---------------GENERATION OF : BULB --------------

INSERT INTO CONNECTED_OBJECT(ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) VALUES (nextval(pg_get_serial_sequence('connected_object', 'id')), 0, 'Shandora', '192.168.0.75', '82:5a:be:01:01:75', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL', 3);
INSERT INTO NON_MEDICAL_CONNECTED_OBJECT(ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', 'BULB', currval(pg_get_serial_sequence('room', 'id')), 'point-3');
--------------- SETTINGS/CONFIGURATION ------------------
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 05:25:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#C845FC');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 06:25:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FFA55B');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 07:25:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#C845FC');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-04 09:25:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#C845FC');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 00:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FCED0A');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 02:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#C845FC');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 03:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FB0000');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-05 04:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FB217A');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 00:00:00.0', 'OFF');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FB0000');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 02:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#4AC62F');
INSERT INTO OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) VALUES (currval(pg_get_serial_sequence('connected_object', 'id')), '2020-01-07 04:00:00.0', 'ON');
INSERT INTO BULB VALUES (currval(pg_get_serial_sequence('object_setting', 'id')), 0, '#FCED0A');
--------------- EVENTS ------------------
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 01:00:00.0', 'The bulb is providing too much heat', '2020-01-01 01:07:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 03:07:00.0', 'The bulb is providing too much heat', '2020-01-01 03:12:00.0', 'DANGER', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 04:12:00.0', 'Check the room, there is a problem', '2020-01-01 04:20:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-01 05:20:00.0', 'Check the room, there is a problem', '2020-01-01 05:28:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 00:00:00.0', 'Check the room, there is a problem', '2020-01-02 00:05:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 01:05:00.0', 'The bulb is providing too much heat', '2020-01-02 01:11:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 02:11:00.0', 'The bulb is using too much energy', '2020-01-02 02:16:00.0', 'MISSING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-02 03:16:00.0', 'The bulb is providing too much heat', '2020-01-02 03:23:00.0', 'BROKEN', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 00:00:00.0', 'The bulb is using too much energy', '2020-01-04 00:09:00.0', 'WARNING', currval(pg_get_serial_sequence('connected_object', 'id')));
INSERT INTO HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) VALUES (nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '2020-01-04 02:09:00.0', 'The bulb is providing too much heat', '2020-01-04 02:16:00.0', 'IN_REPAIR', currval(pg_get_serial_sequence('connected_object', 'id')));
----------------------------------------------------------------------------------
----------------------------------------------------------------------------------

