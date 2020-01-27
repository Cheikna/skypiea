package com.skytech.skypiea.commons.statistic;

public class FailureRate {
	
	private int numberOfBrokenObjects;
	private int numberTotalOfObjects;
	private int numberOfActiveObjects;
	

	public FailureRate(int numberOfBrokenObjects, int numberTotalOfObjects, int numberOfActiveObjects) {
		super();
		this.numberOfBrokenObjects = numberOfBrokenObjects;
		this.numberTotalOfObjects = numberTotalOfObjects;
		this.numberOfActiveObjects = numberOfActiveObjects;
	}

	public FailureRate() {
		super();
	}

	public int getNumberOfBrokenObjects() {
		return numberOfBrokenObjects;
	}

	public void setNumberOfBrokenObjects(int numberOfBrokenObjects) {
		this.numberOfBrokenObjects = numberOfBrokenObjects;
	}

	public int getNumberTotalOfObjects() {
		return numberTotalOfObjects;
	}

	public void setNumberTotalOfObjects(int numberTotalOfObjects) {
		this.numberTotalOfObjects = numberTotalOfObjects;
	}

	public int getNumberOfActiveObjects() {
		return numberOfActiveObjects;
	}

	public void setNumberOfActiveObjects(int numberOfActiveObjects) {
		this.numberOfActiveObjects = numberOfActiveObjects;
	}
	
	

}
