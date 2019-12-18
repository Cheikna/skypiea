import { ObjectSetting } from './objectSetting.model';

export class TemperatureController extends ObjectSetting{
    threshold : number;
    temperatureMax : number;
    temperatureMin : number;
    currentTemperature: number;
    temperatureSettled : number;
    isHealthingConnected : boolean;
    isAirConditionnerConnected : boolean;    
}