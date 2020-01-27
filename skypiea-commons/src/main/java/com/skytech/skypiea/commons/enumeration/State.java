package com.skytech.skypiea.commons.enumeration;

public enum State {
	OPERATIONAL(1),
	IN_REPAIR(2),
	WARNING(3),
	DANGER(4),
	BROKEN(5),
	MISSING(6);

	private int level;
	
	State(int priority){
		this.priority = priority;
	}

	public int getPriority() {
		return priority;
	}
}
