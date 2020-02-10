import { nonMedicalObjectIcons } from '../util/nonMedicalObjectIcons.util';

export enum NonMedicalObjectType {
	
	BINARY_SENSOR = "BINARY_SENSOR",
	
	SHUTTER = "SHUTTER",
	
	SUNSHINE_SENSOR = "SUNSHINE_SENSOR",
	
	DOOR_SENSOR = "DOOR_SENSOR",
	
	BULB = "BULB",
	
	TEMPERATURE_CONTROLLER = "TEMPERATURE_CONTROLLER",
	
	ALARM_CLOCK = "ALARM_CLOCK",
	
	SMOKE_SENSOR = "SMOKE_SENSOR"
}

/**
 * 
 * @param objectType : the type of the object with the underscore like in this enum
 * Give the name whithout the underscore of a non medical object type
 */
export function getNonMedicalObjectTypeName(objectType: any): string {
	let name = "";
	try {
		name = nonMedicalObjectIcons[objectType].name;
	} catch (error) {
		console.error(`Could not find the value ${objectType} in nonMedicalObjectIcons.util.ts !`);
		console.error(error);
	}
	return name;
}