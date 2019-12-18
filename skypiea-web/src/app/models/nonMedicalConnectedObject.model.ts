import { NonMedicalObjectType } from '../enums/nonMedicalObjectType.enum';
import { Room } from './room.model';
import { ConnectedObject } from './connectedObject.model';
import { ObjectSetting } from './objectSetting.model';

export class NonMedicalConnectedObject extends ConnectedObject {
    installationDate: Date;
    nonMedicalObjectType: NonMedicalObjectType;
    room: Room;
    svgPoint: string;
    currentSetting: ObjectSetting;
    objectsSetting: Array<ObjectSetting>;
}