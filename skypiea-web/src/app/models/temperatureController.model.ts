import { NonMedicalConnectedObject } from './nonMedicalConnectedObject.model';

export class TemperatureController extends NonMedicalConnectedObject{
    threshold : number;
    temperatureMax : number;
    temperatureMin : number;
    currentTemperature: number;
    temperatureSettled : number;
    isHealthingConnected : boolean;
    isAirConditionnerConnected : boolean;
    isCurrentSettings : boolean;
    savingDate  : Date;
    
}