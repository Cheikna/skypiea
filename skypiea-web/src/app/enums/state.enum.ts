export enum State {
    OPERATIONAL = "OPERATIONAL",
	IN_REPAIR = "IN_REPAIR",
	BROKEN = "BROKEN",
	WARNING = "WARNING",
	DANGER = "DANGER"
}

export const stateInfo = {
	"OPERATIONAL": {
		// Green
		color: "#28C800",
		name: "Operational" 
	},
	"IN_REPAIR": {
		// Yellow
		color: "#F4FF00",
		name: "In reparation" 
	},
	"BROKEN": {
		// Cyan
		color: "#14C8FF",
		name: "Broken" 
	},
	"WARNING": {
		// Orange
		color: "#FF8D14",
		name: "Warning" 
	},
	"DANGER": {
		// Red
		color: "#FF0000",
		name: "Danger" 
	}
}