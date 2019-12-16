import { NonMedicalConnectedObject } from './nonMedicalConnectedObject.model';

export class Shutter extends NonMedicalConnectedObject {
    windowCoverage: number;
    isAutomaticModeEnabled: boolean;
    isCurrentSettings: boolean;
    savingDate: Date;
}