package com.skytech.skypiea.commons.object.statistic;

import java.sql.Timestamp;
import java.util.function.Function;
import java.util.function.Predicate;

import com.skytech.skypiea.commons.entity.HistoryEvent;
import com.skytech.skypiea.commons.entity.ObjectSetting;

public class ObjectStatisticFilter {

	private Timestamp dateFrom;
	private Timestamp dateTo; 

	public ObjectStatisticFilter(Timestamp dateFrom, Timestamp dateTo) {
		this.dateFrom = dateFrom;
		this.dateTo = dateTo;
	}

	public ObjectStatisticFilter() {

	}
	
	public Timestamp getDateFrom() {
		return dateFrom;
	}

	public void setDateFrom(Timestamp dateFrom) {
		this.dateFrom = dateFrom;
	}

	public Timestamp getDateTo() {
		return dateTo;
	}

	public void setDateTo(Timestamp dateTo) {
		this.dateTo = dateTo;
	}
	
	@Override
	public String toString() {
		return "ObjectStatisticFilter [dateFrom=" + dateFrom + ", dateTo=" + dateTo + "]";
	}	
	
	private Function<Timestamp, Boolean> datesPredicate = (savingDate) -> {
		if(savingDate == null) {
			return false;
		}
		if(dateFrom != null && savingDate.before(dateFrom)) {
			return false;
		}
		if(dateTo != null && savingDate.after(dateTo)) {
			return false;
		}
		return true;
	};
	
	public Predicate<ObjectSetting> objectSettingDatesPredicate = (setting) -> {
		Timestamp savingDate = setting.getSavingDate();
		return datesPredicate.apply(savingDate);
	};	
	
	public Predicate<HistoryEvent> eventDatesPredicate = (event) -> {
		Timestamp savingDate = event.getStartTime();
		return datesPredicate.apply(savingDate);	
	};


}
