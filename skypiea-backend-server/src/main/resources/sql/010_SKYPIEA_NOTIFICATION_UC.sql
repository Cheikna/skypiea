CREATE TABLE NOTIFICATION (
ID serial primary key, 
VERSION integer, 
MESSAGE_OBJECT TEXT, 
MESSAGE_BODY TEXT,
NOTIFICATION_STATE VARCHAR(20),
NOTIFICATION_OBJECT VARCHAR(20) DEFAULT 'OTHER',
SENDING_DATE TIMESTAMP,
READING_DATE TIMESTAMP,
IS_GROUPED_MESSAGE BOOLEAN,
RESIDENT_ID integer
);

CREATE TABLE NOTIFICATION_TEMPLATE (
ID serial primary key, 
VERSION integer, 
NOTIFICATION_OBJECT VARCHAR(20) DEFAULT 'OTHER',
MESSAGE_OBJECT TEXT, 
MESSAGE_BODY TEXT
);

INSERT INTO NOTIFICATION_TEMPLATE(MESSAGE_OBJECT, MESSAGE_BODY) VALUES ('Welcome', 'Thank you for joining us !<br><br>Your account is now activated and you can do a lot of things like consult your messages, configure your objects and much more.');
INSERT INTO NOTIFICATION_TEMPLATE(MESSAGE_OBJECT, MESSAGE_BODY) VALUES ('Heatwave', 'Because of the heatwave, we recommand you to drink a lot and only water.<br>Let your shutters closed and do not hesitate to take a shower !');
INSERT INTO NOTIFICATION_TEMPLATE(MESSAGE_OBJECT, MESSAGE_BODY) VALUES ('EHPAD 2 years !', 'In order to celebrate the 2 years of the EHPAD, a buffet will take place on Friday, May 29th.<br><br>Come and join us for this celebration.');
INSERT INTO NOTIFICATION_TEMPLATE(MESSAGE_OBJECT, MESSAGE_BODY) VALUES ('Heatwave', 'Because of the heatwave, we recommand you to drink a lot and only water &#1F60F;<br>Let your shutters closed and do not hesitate to take a shower !');
INSERT INTO NOTIFICATION_TEMPLATE(MESSAGE_OBJECT, MESSAGE_BODY) VALUES ('Pharmaceutical drugs recalled', 'Do not forget to take your drugs');
INSERT INTO NOTIFICATION_TEMPLATE(MESSAGE_OBJECT, MESSAGE_BODY) VALUES ('Tips to fight the flu', 'The flu is coming - Tips against flu<br>
---- Wash your hands ----
Good hygiene is one of the best ways to help prevent a cold or flu from spreading. Wash your hands regularly with soap and water.<br><br>
---- Cover coughs and sneezes ----
Cover your mouth and nose when coughing or sneezing. Preferably with your elbow rather than your hand.<br><br>
---- Bin your tissues ----
Throw disposable tissues in the bin immediately after using them.<br><br>
---- Avoid sharing  ----
Try not to share cups, plates, cutlery and towels with other people, as this could spread germs.<br><br>
---- Don’t rely on antibiotics ----
Antibiotics won’t cure a cold or flu as these illnesses are caused by viruses.<br>
Antibiotics only work for bacterial infections. Check if your cold and flu medication will help relieve symptoms on healthdirect’s medicine directory.<br><br>
---- Know the symptoms of a cold versus flu ----
A cold is not life-threatening and although uncomfortable does not require visit to a GP. A flu can escalate and may require medical attention.<br><br>
from https://www.healthdirect.gov.au/10-tips-to-fight-the-flu-infographic');
INSERT INTO NOTIFICATION_TEMPLATE(NOTIFICATION_OBJECT,MESSAGE_OBJECT, MESSAGE_BODY) VALUES ('ABOUT_OBJECT', 'Technical control','The mentionned object need a technical control. <br>
One of our technicians will check this object within the next 24 hours');
INSERT INTO NOTIFICATION_TEMPLATE(NOTIFICATION_OBJECT,MESSAGE_OBJECT, MESSAGE_BODY) VALUES ('ABOUT_OBJECT', 'Information about a broken object','The mentionned object is broken. <br>
One of our technicians will check this object within the next 30 minutes');
INSERT INTO NOTIFICATION_TEMPLATE(NOTIFICATION_OBJECT,MESSAGE_OBJECT, MESSAGE_BODY) VALUES ('ABOUT_OBJECT', 'Information about a missing object','The mentionned object is missing. <br>
Perhaps, the object has been unplugged or is switched off. One of our technicians will check this object within the next 30 minutes');
INSERT INTO NOTIFICATION_TEMPLATE(NOTIFICATION_OBJECT,MESSAGE_OBJECT, MESSAGE_BODY) VALUES ('ABOUT_OBJECT', 'Information about a warning object','The mentionned object is in warning. <br>
Please be careful otherwise it will end with a danger !');
INSERT INTO NOTIFICATION_TEMPLATE(NOTIFICATION_OBJECT,MESSAGE_OBJECT, MESSAGE_BODY) VALUES ('ABOUT_OBJECT', 'Information about a danger object','The mentionned object is in danger. <br>
The object raises a danger. Please step out of your room ! A tema will intervenes in the next minutes.');