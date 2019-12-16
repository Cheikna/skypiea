import { NonMedicalConnectedObject } from './nonMedicalConnectedObject.model';


export class AlarmClock extends NonMedicalConnectedObject {
    currentTime: Date;
    isCurrentSettings: boolean;
    savingDate: Date;
}