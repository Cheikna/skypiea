import { NonMedicalConnectedObject } from './nonMedicalConnectedObject.model';

export class Bulb extends NonMedicalConnectedObject{
    currentColor: string;
    isCurrentSettings: boolean;
    savingDate: Date;
}