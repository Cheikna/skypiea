CREATE TABLE SKYPIEA_USER (ID serial primary key, 
				   VERSION integer, 
				   LAST_NAME VARCHAR(100), 
				   FIRST_NAME VARCHAR(100), 
				   USERNAME VARCHAR(150),
				   PASSWORD VARCHAR(100),
				   USER_TYPE VARCHAR(20),
				   LAST_CONNECTION_DATE TIMESTAMP				   
);
				  
CREATE TABLE STAFF (ID integer primary key			   
);
				  
CREATE TABLE RESIDENT (ID integer primary key,
					   BIRTH_DAY TIMESTAMP			   
);


INSERT INTO skypiea_user (id, version, last_name, first_name, username, password, user_type, last_connection_date) VALUES (1, 1, 'staff', 'staff', 'staff', '$2a$10$6bM6UiXl9l..KndyiJh8N.9FbFJ2bPxr4jd/ChXJ9XlFGaAyuPtsm', 'STAFF', '2019-12-09 09:00:00.000');
INSERT INTO skypiea_user (id, version, last_name, first_name, username, password, user_type, last_connection_date) VALUES (2, 1, 'resident', 'resident', 'resident', '$2a$10$zMe9eeABH65hdOLIkwmnceYlJp5m13FaqFhVJcwtlJVWwha3rgbz6', 'RESIDENT', '2019-12-09 09:00:00.000');

INSERT INTO staff (id) VALUES (1);
INSERT INTO resident (id, BIRTH_DAY) VALUES (2, '1939-12-09 09:00:00.000');