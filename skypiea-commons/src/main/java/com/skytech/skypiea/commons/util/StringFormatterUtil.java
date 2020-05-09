package com.skytech.skypiea.commons.util;

import java.sql.Timestamp;

import com.skytech.skypiea.commons.enumeration.State;

public class StringFormatterUtil {
	

	private static final String ROOM_ALGO_FORMAT_WIDTH = "%4s|%19s|%27s|%21s|%14s|%24s|%13s|\n";
	private static final String ROOM_ALGO_TOP_BORDER   = "    +-------------------+---------------------------+---------------------+--------------+------------------------+-------------+\n";
	private static final String ROOM_ALGO_HEADER       = "    |     IP ADDRESS    |           Type            |        State        | Warn. count  |      Current value     | Saved In DB |\n";

	private static final String OBJECT_ACTIVITY_FORMAT_WIDTH = "%4s|%8d|%19s|%23s|%23s|%20s|%16s|%8s|%13s|\n";
	private static final String OBJECT_ACTIVITY_TOP_BORDER   = "    +--------+-------------------+-----------------------+-----------------------+--------------------+----------------+--------+-------------+\n";
	private static final String OBJECT_ACTIVITY_HEADER       = "    |   ID   |     IP ADDRESS    |   Last message time   |    Checking time      | Difference min:sec | limite max sec |  OK ?  |    State    |\n";

	
	public static String formatRoomAlgoResult(String ipAddress, String objectType, String state, String warnCount, String currentValue, boolean saveInDB) {
		String valuesLine = String.format(ROOM_ALGO_FORMAT_WIDTH, "", ipAddress, objectType, state, warnCount, currentValue, saveInDB);
		String result = ROOM_ALGO_TOP_BORDER + ROOM_ALGO_HEADER + ROOM_ALGO_TOP_BORDER + valuesLine + ROOM_ALGO_TOP_BORDER;
		return result;		
	}
	
	public static String formatObjectActivityChecker(Long id, String ipAddress, Timestamp lastMessageDate, Timestamp checkingDate, String differenceLastMessageAndCheckingDate, String frequency, Boolean isDifferenceOk, State state) {
		String valuesLine = String.format(OBJECT_ACTIVITY_FORMAT_WIDTH, "", id, ipAddress, lastMessageDate, checkingDate, differenceLastMessageAndCheckingDate, frequency, isDifferenceOk, state.name());
		String result = OBJECT_ACTIVITY_TOP_BORDER + OBJECT_ACTIVITY_HEADER + OBJECT_ACTIVITY_TOP_BORDER + valuesLine + OBJECT_ACTIVITY_TOP_BORDER;
		return result;	
	}
}
