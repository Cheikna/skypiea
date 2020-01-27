package com.skytech.skypiea.commons.enumeration;

public enum State {
	OPERATIONAL(5),
	IN_REPAIR(4),
	BROKEN(3),
	WARNING(2),
	DANGER(1);
	
	/* The priority give the importance of each state
	 * 1 -> state with the highest priority
	 * 5 -> state with less priority
	 */
	private int priority;
	
	State(int priority){
		this.priority = priority;
	}

	public int getPriority() {
		return priority;
	}
}
