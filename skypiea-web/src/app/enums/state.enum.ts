export enum State {
    OPERATIONAL = "OPERATIONAL",
	IN_REPAIR = "IN_REPAIR",
	BROKEN = "BROKEN",
	WARNING = "WARNING",
	DANGER = "DANGER",
	MISSING = "MISSING"
}

const basePath= "assets/images/object-states";
export const stateInfo = {
	"OPERATIONAL": {
		// Green
		color: "#28C800",
		name: "Operational",
		icon: `${basePath}/operational.png` 
	},
	"IN_REPAIR": {
		// Yellow
		color: "#F4FF00",
		name: "In reparation",
		icon: `${basePath}/in_repair.png`  
	},
	"BROKEN": {
		// Cyan
		color: "#14C8FF",
		name: "Broken",
		icon: `${basePath}/broken.png` 
	},
	"WARNING": {
		// Orange
		color: "#FF8D14",
		name: "Warning",
		icon: `${basePath}/warning.png`  
	},
	"DANGER": {
		// Red
		color: "#FF0000",
		name: "Danger",
		icon: `${basePath}/danger.png`  
	},
	"MISSING": {
		// Grey
		color: "#696969	",
		name: "Missing",
		icon: `${basePath}/help.png`  
	}
}