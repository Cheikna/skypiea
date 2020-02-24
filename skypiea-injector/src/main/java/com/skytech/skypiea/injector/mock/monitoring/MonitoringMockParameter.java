package com.skytech.skypiea.injector.mock.monitoring;

import org.apache.commons.lang3.RandomUtils;

public enum MonitoringMockParameter {

	NUMBER_LIGHT_PER_DAY("6"),
	INDOOR_TEMPERATURE_MIN("12"),
	INDOOR_TEMPERATURE_MAX("23"),
	EXTERNAL_TEMPERATURE_MIN("5"),
	EXTERNAL_TEMPERATURE_MAX("25"),
	EXTERNAL_SUNSHINE_RATE_MIN("300"),
	EXTERNAL_SUNSHINE_RATE_MAX("12000"),
	MIN_SMOKE_THRESHOLD("0"),
	MAX_SMOKE_THRESHOLD("250"),
	BEGIN_DATE_FOR_DATA_GENERATION("2020-01-01 00:00:00"),
	END_DATE_FOR_DATA_GENERATION("2020-02-21 23:59:59");
	
	private String defaultValue;
	
	private static final String[] lightColors = {"#FB0000", "#FFA55B", "#FCED0A", "#4AC62F", 
			"#20EFB3", "#19C7C7", "#196DC7", "#C845FC", "#DC03CB", "#FB217A"};
	
	MonitoringMockParameter(String defaultValue){
		this.defaultValue = defaultValue;
	}

	public String getDefaultValue() {
		return defaultValue;
	}
	
	public static String getRandomColor() {
		int randomIndex = RandomUtils.nextInt(0, lightColors.length);
		return lightColors[randomIndex];
	}
	
	public static MonitoringMockParameter[] getMonitoringMockParameters() {
		return MonitoringMockParameter.values();
	}

}
