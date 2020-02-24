package com.skytech.skypiea.injector.mock.monitoring;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.List;
import java.util.Scanner;
import java.util.concurrent.atomic.AtomicReference;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.function.Function;

import org.apache.commons.lang3.RandomUtils;
import org.apache.commons.lang3.math.NumberUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.skytech.skypiea.commons.enumeration.NonMedicalObjectType;
import com.skytech.skypiea.commons.enumeration.State;
import com.skytech.skypiea.commons.util.FileReader;
import com.skytech.skypiea.commons.util.PasswordUtil;
import com.skytech.skypiea.injector.mock.abstracts.Mock;

public class ResidentRoomObjectEventSqlGeneration extends Mock {
	//TODO Check if all can be unified as Consumer instead of Function ??

	private static Logger log = LoggerFactory.getLogger(ResidentRoomObjectEventSqlGeneration.class);	

	private final String NAME_FILE_PATH = "monitoring/names.txt";
	private final String FILE_TO_GENERATE = "newData.sql";
	
	private List<String> lastNames;
	private List<String> firstNames;
	
	private final String ip = "192.168.";
	private final String mac = "82:5a:be:";
	private final String sqlBegin = "INSERT INTO";
	private final String sqlMiddle = "VALUES";	
	private int mac1 = 1;
	private int mac2 = 1;
	private int mac3 = 16;
	private int ipBegin = 0;
	private int ipEnd = 16;
	private FileWriter fileWriter;
    private PrintWriter printWriter;
    private final String newLine = "\n";
    private int numberOfSettingsToGenerate = 8;
    private int numberOfEventToGenerate = 8;
    private int doorNumber = 107;
    private int floor = 1;
    private Timestamp startDateForMock;
    private final List<String> svgPoints = Arrays.asList("point-3", "point-7", "point-12");
    private List<String> remainingPoints = new ArrayList<>();
	
	public ResidentRoomObjectEventSqlGeneration() {
		lastNames = new ArrayList<String>();
		firstNames = new ArrayList<String>();
		retrieveNames();
	}
	
	private void retrieveNames() {
		try {
			AtomicReference<Boolean> isFirstLine = new AtomicReference<Boolean>(true);
			Consumer<String> readNames = (line) -> {
				String[] names = line.split(";");
				if(isFirstLine.get()) {
					lastNames.addAll(Arrays.asList(names));
					isFirstLine.set(false);
				} else {
					firstNames.addAll(Arrays.asList(names));				
				}
			};
			FileReader.readLine(NAME_FILE_PATH, readNames, false);
		} catch (Exception e) {
			log.error(e.getMessage());
		}
	}
	
	/**
	 * Main method to mock some users
	 * When the user arrives at the end of the start method, 
	 * he is redirected to the list of mocks
	 */
	@Override
	public void start(Scanner sc) {
		try {
			openFile();
			resetStartMockTime();
			Timestamp endDateForMock = Timestamp.valueOf(MonitoringMockParameter.END_DATE_FOR_DATA_GENERATION.getDefaultValue());
			log.info("Creation of mock data for dates between " + startDateForMock + " and " + endDateForMock);
			int firstNamesListSize = firstNames.size();
			int lastNamesListSize = lastNames.size();
			int defaultValue = 20;
			int min = NumberUtils.min(lastNamesListSize, firstNamesListSize, defaultValue);
			String lastName = "";
			String firstName = "";
			for(int i=0; i < min; i++) {
				lastName = lastNames.get(i);
				firstName = firstNames.get(i);
				writeInFile("---------------------------------------------------------------------\n");
				writeInFile("------------------- ROOM N°" + doorNumber + "---------------------------------------\n");
				writeInFile("---------- FOR " + lastName.toUpperCase() + " " + firstName + "------------------------------------\n");
				writeInFile("---------------------------------------------------------------------\n");
				remainingPoints.clear();
				remainingPoints.addAll(svgPoints);
				startDateForMock = Timestamp.valueOf(MonitoringMockParameter.BEGIN_DATE_FOR_DATA_GENERATION.getDefaultValue());
				
				generateUserInsertSQL.apply(lastName, firstName);
				generateRoom.apply(firstName.toLowerCase());

				
				NonMedicalObjectType[] types = { NonMedicalObjectType.TEMPERATURE_CONTROLLER, 
						NonMedicalObjectType.SUNSHINE_SENSOR,
						NonMedicalObjectType.BULB
				};

				for(NonMedicalObjectType type: types) {
					writeInFile("---------------GENERATION OF : " + type + " --------------\n\n");
					generateObjects.apply(type);
				}
				
				writeInFile("----------------------------------------------------------------------------------\n");
				writeInFile("----------------------------------------------------------------------------------\n");
				writeInFile(newLine);
				doorNumber++;
				if(i == (min/2)) {
					doorNumber = 200;
					floor = 2;
				}
			}
		} catch (Exception e) {
			log.error(e.getMessage());
			e.printStackTrace();
		}
		closeFile();
		
		
	}
	

	
	private Function<String, String> generateSunshineSensorSetting = (str) -> {
		int tempMin = NumberUtils.toInt(MonitoringMockParameter.EXTERNAL_TEMPERATURE_MIN.getDefaultValue());
		int tempMax = NumberUtils.toInt(MonitoringMockParameter.EXTERNAL_TEMPERATURE_MAX.getDefaultValue());
		int extTemp = RandomUtils.nextInt(tempMin, tempMax);
		
		int sunMin = NumberUtils.toInt(MonitoringMockParameter.EXTERNAL_SUNSHINE_RATE_MIN.getDefaultValue());
		int sunMax = NumberUtils.toInt(MonitoringMockParameter.EXTERNAL_SUNSHINE_RATE_MAX.getDefaultValue());
		int extSun = RandomUtils.nextInt(sunMin, sunMax);
		
		
		String sql = String.format("%s SUNSHINE_SENSOR %s "
				+ "(currval(pg_get_serial_sequence('object_setting', 'id')), 0, %d, %d);", sqlBegin, sqlMiddle, extTemp, extSun);
		return sql;		
	};
	
	private Function<String, String> generateBulb = (str) -> {
		String bulbSQL = String.format("%s BULB %s "
				+ "(currval(pg_get_serial_sequence('object_setting', 'id')), 0, '%s');", sqlBegin, sqlMiddle, MonitoringMockParameter.getRandomColor());
		return bulbSQL;
	};
	
	private Function<String, String> generateTemperatureController = (str) -> {
		int tempMin = NumberUtils.toInt(MonitoringMockParameter.INDOOR_TEMPERATURE_MIN.getDefaultValue());
		int tempMax = NumberUtils.toInt(MonitoringMockParameter.INDOOR_TEMPERATURE_MAX.getDefaultValue());
		int rdnTemp1 = RandomUtils.nextInt(tempMin, tempMax);
		int rdnTemp2 = RandomUtils.nextInt(tempMin, tempMax);
		boolean rdnBool1 = (Math.random() < 0.5);
		boolean rdnBool2 = (Math.random() < 0.5);
		String sql = String.format("%s TEMPERATURE_CONTROLLER %s "
				+ "(currval(pg_get_serial_sequence('object_setting', 'id')), 0, 15, 10, 30, %d, %d, %s, %s);", sqlBegin, sqlMiddle, rdnTemp1, rdnTemp2, String.valueOf(rdnBool1), String.valueOf(rdnBool2));
		return sql;	
	};
	
	private Function<String, String> generateEvent = (comments) -> {
		String eventSQL = String.format("%s HISTORY_EVENT(ID, VERSION, EVENT_TYPE, START_TIME, DESCRIPTION, END_TIME, REACHED_STATE, CONNECTED_OBJECT_ID) %s "
				+ "(nextval(pg_get_serial_sequence('history_event', 'id')), 0, 'MONITORING', '%s', '%s', '%s', '%s', currval(pg_get_serial_sequence('connected_object', 'id')));", sqlBegin, sqlMiddle, startDateForMock.toString(), comments, addTime(Calendar.MINUTE, RandomUtils.nextInt(5, 10)), getRandomState());
		writeInFile(eventSQL + newLine);
		return "";
	};
	
	private BiFunction<String, String, String> generateUserInsertSQL = (lastName, firstName) -> {
		String line1 = String.format("%s SKYPIEA_USER(id, version, last_name, first_name, username, password, user_type, last_connection_date) %s "
				+ "(nextval(pg_get_serial_sequence('skypiea_user', 'id')), 0, '%s', '%s', '%s', '%s', 'RESIDENT', '2020-01-01 12:00:00.000');"
				, sqlBegin, sqlMiddle, lastName, firstName, firstName.toLowerCase(), PasswordUtil.encode(firstName.toLowerCase()));
		String line2 = String.format("%s RESIDENT(id, birth_day) %s (currval(pg_get_serial_sequence('skypiea_user', 'id')), '1939-12-09 09:00:00.000');"
				, sqlBegin, sqlMiddle, lastName, firstName);
		writeInFile(line1 + newLine + line2 + newLine);
		return "";
	};
	
	private Function<String, String> generateRoom = (residentUsername) -> {
		String roomSQL = String.format("%s ROOM(id, version, door_number, floor, width,length, height, wing, svg_point, resident_id) %s "
				+ "(nextval(pg_get_serial_sequence('room', 'id')), 0, %d, %d, 6.6, 3.0, 2.0, 'NORTH', 'room-%s', currval(pg_get_serial_sequence('skypiea_user', 'id')));",
				sqlBegin, sqlMiddle, doorNumber, floor, (String.valueOf(doorNumber%100)));
		writeInFile(roomSQL + newLine);
		return "";
	};
	
	private Function<NonMedicalObjectType, String> generateObjects = (objectType) -> {		
		String connectedObjectSQL = String.format("%s CONNECTED_OBJECT(ID, VERSION, BRAND, IP_ADDRESS, MAC_ADDRESS, LAST_MEASUREMENT_DATE, LAST_PARAMETER_MODIFICATION_DATE, STATUS, STATE, SENSITIVITY) %s "
				+ "(nextval(pg_get_serial_sequence('connected_object', 'id')), 0, 'Shandora', '%s', '%s', '2019-12-16 09:00:00.000', '2019-12-16 09:00:00.000', 'ON', 'OPERATIONAL', %d);", sqlBegin, sqlMiddle, generateNewIPAddress(), generateNewMacAddress(),
				RandomUtils.nextInt(3, 6));
		
		int size = remainingPoints.size();
		String svgPoint = "";
		if(size == 1) {
			svgPoint = remainingPoints.get(0);
		} else if(size > 1) {
			svgPoint = remainingPoints.get(RandomUtils.nextInt(0, size));			
		}
		remainingPoints.remove(svgPoint);
		String nonObjectSQL = String.format("%s NON_MEDICAL_CONNECTED_OBJECT(ID, INSTALLATION_DATE, NON_MEDICAL_OBJECT_TYPE, ROOM_ID, SVG_POINT) %s "
				+ "(currval(pg_get_serial_sequence('connected_object', 'id')), '2019-12-16 09:00:00.000', '%s', currval(pg_get_serial_sequence('room', 'id')), '%s');", sqlBegin, sqlMiddle, objectType, svgPoint);
		
		String[] status = {"ON", "OFF"};
		
		
		String[] comments = new String[3];
		Function<String, String> f = null;
		if(objectType == NonMedicalObjectType.TEMPERATURE_CONTROLLER) {
			f = generateTemperatureController;
			comments[0] = "The temperature is too high";
			comments[1] = "The temperature is too low";
			comments[2] = "Check the room, there is a problem";
		} else if(objectType == NonMedicalObjectType.SUNSHINE_SENSOR) {
			comments[0] = "It is sunny on the outside";
			comments[1] = "It is cold";
			comments[2] = "Check the room, there is a problem";
			f = generateSunshineSensorSetting;
		} else if(objectType == NonMedicalObjectType.BULB) {
			comments[0] = "The bulb is providing too much heat";
			comments[1] = "The bulb is using too much energy";
			comments[2] = "Check the room, there is a problem";
			f = generateBulb;
		}
		int commentsSize = comments.length;
		
		writeInFile(connectedObjectSQL + newLine);
		writeInFile(nonObjectSQL + newLine);
		writeInFile("--------------- SETTINGS/CONFIGURATION ------------------" + newLine);

		numberOfSettingsToGenerate = RandomUtils.nextInt(10, 16);
		for(int i=0; i<numberOfSettingsToGenerate; i++) {	
			addTime(Calendar.HOUR, RandomUtils.nextInt(1, 3));
			if((i != 0) && (i % 4 == 0)) {
				resetTimeAtMidnight();
				addTime(Calendar.DAY_OF_MONTH, RandomUtils.nextInt(1, 3));
			}
			
			String rdmStatus = status[RandomUtils.nextInt(0, status.length)];
			String settingSQL = String.format("%s OBJECT_SETTING(NON_MEDICAL_CONNECTED_OBJECT_ID, SAVING_DATE, STATUS) %s (currval(pg_get_serial_sequence('connected_object', 'id')), '%s', '%s');", 
					sqlBegin, sqlMiddle,startDateForMock.toString(), rdmStatus);
			writeInFile(settingSQL + newLine);
			writeInFile(f.apply("") + newLine);			
		}
		writeInFile("--------------- EVENTS ------------------" + newLine);
		resetStartMockTime();
	    numberOfEventToGenerate = RandomUtils.nextInt(8, 18);
		for(int i=0; i<numberOfEventToGenerate; i++) {		
			addTime(Calendar.HOUR, RandomUtils.nextInt(1, 3));
			if((i != 0) && (i % 4 == 0)) {
				resetTimeAtMidnight();
				addTime(Calendar.DAY_OF_MONTH, RandomUtils.nextInt(1, 3));
			}
			generateEvent.apply(comments[RandomUtils.nextInt(0, commentsSize)]);	
		}		
		
		return "";
	};
	
	private void resetStartMockTime() {
		startDateForMock = Timestamp.valueOf(MonitoringMockParameter.BEGIN_DATE_FOR_DATA_GENERATION.getDefaultValue());
	}
	
	private Timestamp addTime(int type, int value) {
		Calendar cal = Calendar.getInstance();
		cal.setTime(startDateForMock);
		cal.add(type, value);
		startDateForMock = new Timestamp(cal.getTimeInMillis());
		return startDateForMock;
		 
	}
	
	private Timestamp resetTimeAtMidnight() {
		Calendar cal = Calendar.getInstance();
		cal.setTime(startDateForMock);
		cal.set(Calendar.HOUR, 0);
		cal.set(Calendar.MINUTE, 0);
		startDateForMock = new Timestamp(cal.getTimeInMillis());
		return startDateForMock;		 
	}
	
	private String addOptionnalZero(int number) {
		return ((number<10)? "0"+number : String.valueOf(number));
	}

	private String getRandomState() {
		State[] states = State.values();
		List<State> states2 = new ArrayList<>();
		for(State s: states) {
			if(s != State.OPERATIONAL) {
				states2.add(s);
			}
		}
		int size = states2.size();
		return states2.get(RandomUtils.nextInt(0, size)).name();
	}
	
	@Override
	public void clearInjectedData() {}

	@Override
	public String getMockName() {
		return "Residents, Rooms, Objects SQL Script generation";
	}
	
	private void openFile() throws IOException {
		File file = new File(FILE_TO_GENERATE);
		file.createNewFile();
		fileWriter = new FileWriter(file);
	    printWriter = new PrintWriter(fileWriter);  
	}
	
	private void writeInFile(String stringToWrite) {
		printWriter.print(stringToWrite);
	}
	
	private void closeFile() {
		if(printWriter != null) {
			printWriter.close();
		}
	}
	
	private String generateNewIPAddress() {
		String ipAddress = ip + ipBegin + "." + ipEnd;		
		ipEnd++;
		if(ipEnd >=255) {
			ipEnd = 1;
			ipBegin++;
		}
		return ipAddress;
	}
	
	private String generateNewMacAddress() {
		String macAddress = mac + addOptionnalZero(mac1) + ":" + addOptionnalZero(mac2) + ":" + addOptionnalZero(mac3);
		mac3++;
		if(mac3 > 80) {
			mac2++;
			mac3 = 0;
		}
		
		if(mac2 > 56) {
			mac2 = 1;
			mac1++;
		}
		return macAddress;
	}
}
