import { NonMedicalConnectedObject } from './nonMedicalConnectedObject.model';
import { Resident } from './resident.model';
import { Entity } from './entity.model';

export class Room extends Entity {
    doorNumber: number;
    floor: number; 
    isOccupied: boolean;
    width: number; 
    length: number; 
    height: number; 
    wing: string; 
    svgPoint: string;
    resident: Resident;
    nonMedicalConnectedObjects: Array<NonMedicalConnectedObject>;
    objectQuantityByType: Map<string, number>;
}