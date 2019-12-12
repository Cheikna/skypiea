import { NonMedicalConnectedObject } from './nonMedicalConnectedObject.model';

export class TemperatureController extends NonMedicalConnectedObject {
    threshold: number;
    temperatureMax: number;
    temperatureMin: number;
    temperatureSettled: number;
    isHealthingConnected: boolean;
    isAirConditionnerConnected: boolean;
    isCurrentSettings: boolean;
    savingDate: Date;
}