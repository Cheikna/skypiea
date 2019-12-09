import { NonMedicalConnectedObject } from './nonMedicalConnectedObject.model';
import { Resident } from './resident.model';

export class Room {
    doorNumber: number;
    floor: number; 
    isOccupied: boolean;
    width: number; 
    length: number; 
    height: number; 
    wing: string; 
    resident: Resident;
    nonMedicalConnectedObjects: Array<NonMedicalConnectedObject>;
}