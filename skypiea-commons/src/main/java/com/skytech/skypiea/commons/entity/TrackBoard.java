package com.skytech.skypiea.commons.entity;

public class TrackBoard {
	private long id;
	private int width;
	private int height;
	
	
	
	public TrackBoard(long id, int width, int height) {
		this.id = id;
		this.width = width;
		this.height = height;
		
	}
	
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public int getWidth() {
		return width;
	}

	public void setWidth(int width) {
		this.width = width;
	}

	public int getHeight() {
		return height;
	}

	public void setHeight(int height) {
		this.height = height;
	}

	public TrackBoard() {
		
	}

	
	
	
}
