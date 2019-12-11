import { NonMedicalConnectedObject } from './nonMedicalConnectedObject.model';

export class SmokeSensor extends NonMedicalConnectedObject {
    threshold: number;
    sensitivity: string;
    isCurrentSettings: boolean;
    savingDate: Date;
}