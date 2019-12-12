import { NonMedicalConnectedObject } from './nonMedicalConnectedObject.model';

export class Shutter extends NonMedicalConnectedObject {
    windowCoverage: number;
    windowPosition: number;
    isCurrentSettings: boolean;
    savingDate: Date;
}