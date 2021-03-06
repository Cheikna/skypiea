package com.skytech.skypiea.commons.enumeration;

public enum State {
	OPERATIONAL(1),
	IN_REPAIR(2),
	WARNING(3),
	DANGER(4),
	BROKEN(5),
	MISSING(6);

	private int level;
	
	State(int level){
		this.level = level;
	}

	public int getLevel() {
		return level;
	}
	
	public static State getDefaultState() {
		return State.OPERATIONAL;
	}
	
	public static boolean isCheckableForFailure(State state) {
		return state != State.MISSING;
	}
	
	public static boolean hasStateChangedToMissing(State oldState, State newState) {
		return oldState != newState && newState == State.MISSING;
	}
}