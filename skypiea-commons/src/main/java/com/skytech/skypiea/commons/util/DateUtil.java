package com.skytech.skypiea.commons.util;

import java.sql.Timestamp;
import java.util.Date;

public class DateUtil {

	public static Timestamp getCurrentTimestamp() {
		 return  new Timestamp(new Date().getTime());
	}

}
