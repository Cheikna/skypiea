package com.skytech.skypiea.commons.statistic;
import com.skytech.skypiea.commons.entity.Indicators;

public class Indicator{
	private String indicator_name;
	
	public Indicator(String indicatorName) {
		super();
		this.indicator_name = indicatorName;
	}

	public Indicator() {
		super();
	}
	
	public String getIndicatorName() {
		return indicator_name;
	}
	
	public void setNewIndicator(String indicatorName) {
		this.indicator_name = indicatorName;
	}

}
