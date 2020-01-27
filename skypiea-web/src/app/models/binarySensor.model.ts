import { BinarySensorType } from '../enums/binarySensorType.enum';
import { ObjectSetting } from './objectSetting.model';

export class BinarySensor extends ObjectSetting {
    isActive: boolean;
    type: BinarySensorType;
}