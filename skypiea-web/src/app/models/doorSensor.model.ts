import { ObjectSetting } from './objectSetting.model';

export class DoorSensor extends ObjectSetting {
    isDoorLocked: boolean;
    isDoorOpened: boolean;
}