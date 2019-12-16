import { NonMedicalConnectedObject } from './nonMedicalConnectedObject.model';

export class DoorSensor extends NonMedicalConnectedObject {
    isDoorLocked: boolean;
    isDoorOpened: boolean;
    isCurrentSettings: boolean;
    savingDate: Date;
}