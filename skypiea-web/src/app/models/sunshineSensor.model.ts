import { NonMedicalConnectedObject } from './nonMedicalConnectedObject.model';

export class Shutter extends NonMedicalConnectedObject{
    externalTemperature: number;
    externalSunshine: number;
    isCurrentSettings: boolean;
    savingDate: Date;
}