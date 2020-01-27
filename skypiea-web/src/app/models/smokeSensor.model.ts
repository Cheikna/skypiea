import { ObjectSetting } from './objectSetting.model';

export class SmokeSensor extends ObjectSetting {
    threshold : number;
    sensitivity: string;
    minThreshold: number;
    maxThreshold: number;
}