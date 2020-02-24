package com.skytech.skypiea.commons.object.statistic;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import org.javatuples.Triplet;

import com.skytech.skypiea.commons.entity.HistoryEvent;
import com.skytech.skypiea.commons.entity.ObjectSetting;
import com.skytech.skypiea.commons.entity.TemperatureController;

public class TemperatureControllerStatistic extends NonMedicalObjectStatistic {
	
	private Double averageSettledTemperature;
	private Double minSettledTemperature;
	private Double maxSettledTemperature;
	private List<Float> settledTemperatures;
	
	public TemperatureControllerStatistic() {
		this(null, null);
	}
	
	public TemperatureControllerStatistic(Set<ObjectSetting> settings, Set<HistoryEvent> events) {
		super(settings, events);
		settledTemperatures = new ArrayList<Float>();
	}

	@Override
	public void initSpecificStatistics(ObjectSetting setting) {
		TemperatureController temperatureController = (TemperatureController)setting;
		Float measuredTemperature = temperatureController.getTemperatureSettled();
		if(measuredTemperature != null) {
			this.settledTemperatures.add(measuredTemperature);
		}
	}

	@Override
	public void runAfterSettingsLoopJob() {
		Triplet<Double, Double, Double> minMaxAverageInternalTemperature = getMinMaxAverageValues(this.settledTemperatures);
		this.minSettledTemperature = minMaxAverageInternalTemperature.getValue0();
		this.maxSettledTemperature = minMaxAverageInternalTemperature.getValue1();
		this.averageSettledTemperature = minMaxAverageInternalTemperature.getValue2();
	}

	public Double getAverageSettledTemperature() {
		return averageSettledTemperature;
	}

	public void setAverageSettledTemperature(Double averageSettledTemperature) {
		this.averageSettledTemperature = averageSettledTemperature;
	}

	public Double getMinSettledTemperature() {
		return minSettledTemperature;
	}

	public void setMinSettledTemperature(Double minSettledTemperature) {
		this.minSettledTemperature = minSettledTemperature;
	}

	public Double getMaxSettledTemperature() {
		return maxSettledTemperature;
	}

	public void setMaxSettledTemperature(Double maxSettledTemperature) {
		this.maxSettledTemperature = maxSettledTemperature;
	}

	public List<Float> getSettledTemperatures() {
		return settledTemperatures;
	}

	public void setSettledTemperatures(List<Float> settledTemperatures) {
		this.settledTemperatures = settledTemperatures;
	}
}
