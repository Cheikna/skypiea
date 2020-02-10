package com.skytech.skypiea.commons.util;

public class StringFormatterUtil {
	

	private static final String ROOM_ALGO_FORMAT_WIDTH = "%4s|%19s|%17s|%21s|%14s|%24s|%13s|\n";
	private static final String ROOM_ALGO_TOP_BORDER   = "    +-------------------+-----------------+---------------------+--------------+------------------------+-------------+\n";
	private static final String ROOM_ALGO_HEADER       = "    |     IP ADDRESS    |      Type       |        State        | Warn. count  |      Current value     | Saved In DB |\n";
	
	public static String formatRoomAlgoResult(String ipAddress, String objectType, String state, String warnCount, String currentValue, boolean saveInDB) {
		String valuesLine = String.format(ROOM_ALGO_FORMAT_WIDTH, "", ipAddress, objectType, state, warnCount, currentValue, saveInDB);
		String result = ROOM_ALGO_TOP_BORDER + ROOM_ALGO_HEADER + ROOM_ALGO_TOP_BORDER + valuesLine + ROOM_ALGO_TOP_BORDER;
		return result;		
	}
}
