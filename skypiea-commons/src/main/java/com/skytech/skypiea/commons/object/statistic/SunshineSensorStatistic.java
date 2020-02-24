package com.skytech.skypiea.commons.object.statistic;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import org.javatuples.Triplet;

import com.skytech.skypiea.commons.entity.HistoryEvent;
import com.skytech.skypiea.commons.entity.ObjectSetting;
import com.skytech.skypiea.commons.entity.SunshineSensor;

public class SunshineSensorStatistic extends NonMedicalObjectStatistic {
	
	private Double averageExternalTemperature;
	private Double minExternalTemperature;
	private Double maxExternalTemperature;
	private List<Float> externalTemperatures;

	private Double averageExternalSunshine;
	private Double minExternalSunshine;
	private Double maxExternalSunshine;
	private List<Float> externalSunshines;
	
	public SunshineSensorStatistic() {
		this(null, null);
	}
	
	public SunshineSensorStatistic(Set<ObjectSetting> settings, Set<HistoryEvent> events) {
		super(settings, events);
		externalSunshines = new ArrayList<Float>();
		externalTemperatures = new ArrayList<Float>();
	}

	@Override
	public void initSpecificStatistics(ObjectSetting setting) {
		SunshineSensor sunshineSensor = (SunshineSensor)setting;
		Float externalTemperature = sunshineSensor.getExternalTemperature();
		Float externalSunshine = sunshineSensor.getExternalSunshine();
		
		if(externalTemperature != null) {
			externalTemperatures.add(externalTemperature);
		}
		if(externalSunshine != null) {
			externalSunshines.add(externalSunshine);
		}
	}	

	@Override
	public void runAfterSettingsLoopJob() {
		Triplet<Double, Double, Double> minMaxAverageTemperatures = getMinMaxAverageValues(externalTemperatures);
		Triplet<Double, Double, Double> minMaxAverageSunshines = getMinMaxAverageValues(externalSunshines);
		this.minExternalTemperature = minMaxAverageTemperatures.getValue0();
		this.maxExternalTemperature = minMaxAverageTemperatures.getValue1();
		this.averageExternalTemperature = minMaxAverageTemperatures.getValue2();
		
		this.minExternalSunshine = minMaxAverageSunshines.getValue0();
		this.maxExternalSunshine = minMaxAverageSunshines.getValue1();
		this.averageExternalSunshine = minMaxAverageSunshines.getValue2();		
	}

	public Double getAverageExternalTemperature() {
		return averageExternalTemperature;
	}

	public void setAverageExternalTemperature(Double averageExternalTemperature) {
		this.averageExternalTemperature = averageExternalTemperature;
	}

	public Double getMinExternalTemperature() {
		return minExternalTemperature;
	}

	public void setMinExternalTemperature(Double minExternalTemperature) {
		this.minExternalTemperature = minExternalTemperature;
	}

	public Double getMaxExternalTemperature() {
		return maxExternalTemperature;
	}

	public void setMaxExternalTemperature(Double maxExternalTemperature) {
		this.maxExternalTemperature = maxExternalTemperature;
	}

	public List<Float> getExternalTemperatures() {
		return externalTemperatures;
	}

	public void setExternalTemperatures(List<Float> externalTemperatures) {
		this.externalTemperatures = externalTemperatures;
	}

	public Double getAverageExternalSunshine() {
		return averageExternalSunshine;
	}

	public void setAverageExternalSunshine(Double averageExternalSunshine) {
		this.averageExternalSunshine = averageExternalSunshine;
	}

	public Double getMinExternalSunshine() {
		return minExternalSunshine;
	}

	public void setMinExternalSunshine(Double minExternalSunshine) {
		this.minExternalSunshine = minExternalSunshine;
	}

	public Double getMaxExternalSunshine() {
		return maxExternalSunshine;
	}

	public void setMaxExternalSunshine(Double maxExternalSunshine) {
		this.maxExternalSunshine = maxExternalSunshine;
	}

	public List<Float> getExternalSunshines() {
		return externalSunshines;
	}

	public void setExternalSunshines(List<Float> externalSunshines) {
		this.externalSunshines = externalSunshines;
	}	
}
