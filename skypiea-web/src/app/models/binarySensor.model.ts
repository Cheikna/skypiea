import { BinarySensorType } from '../enums/binarySensorType.enum';
import { NonMedicalConnectedObject } from './nonMedicalConnectedObject.model';

export class BinarySensor extends NonMedicalConnectedObject {
    isActive: boolean;
    type: BinarySensorType;
}