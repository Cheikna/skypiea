package com.skytech.skypiea.commons.enumeration;

public enum State {
	OPERATIONAL(1),
	IN_REPAIR(2),
	WARNING(3),
	DANGER(4),
	BROKEN(5);

	private int level;
	
	State(int level){
		this.level = level;
	}

	public int getLevel() {
		return level;
	}
}