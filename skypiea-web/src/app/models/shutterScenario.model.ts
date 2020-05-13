import { NonMedicalConnectedObject } from './nonMedicalConnectedObject.model';
import { Room } from './room.model';
import { Time } from '@angular/common';


export class ShutterScenario{
    nonMedicalConnectedObject: NonMedicalConnectedObject;
    room: Room;
    status: String;
    startHour: Time;
    position: String;

}