import { Entity } from './entity.model';
import { NonMedicalObjectType } from '../enums/nonMedicalObjectType.enum';

export class ObjectSetting extends Entity {
    savingDate: Date;
    nonMedicalObjectType: NonMedicalObjectType;
}