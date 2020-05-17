package com.skytech.skypiea.commons.statistic;

public class OccurrencesNumber {
	private int nbOfOccurrencesObject;
	private int nbOfOccurrencesTotal;
	
	public OccurrencesNumber(int nbOfOccurrencesObject, int nbOfOccurrencesTotal) {
		super();
		this.setNbOfOccurrencesObject(nbOfOccurrencesObject);
		this.setNbOfOccurrencesTotal(nbOfOccurrencesTotal);
		
	}

	public OccurrencesNumber() {
		super();
	}

	public int getNbOfOccurrencesObject() {
		return nbOfOccurrencesObject;
	}

	public void setNbOfOccurrencesObject(int nbOfOccurrencesObject) {
		this.nbOfOccurrencesObject = nbOfOccurrencesObject;
	}

	public int getNbOfOccurrencesTotal() {
		return nbOfOccurrencesTotal;
	}

	public void setNbOfOccurrencesTotal(int nbOfOccurrencesTotal) {
		this.nbOfOccurrencesTotal = nbOfOccurrencesTotal;
	}

}