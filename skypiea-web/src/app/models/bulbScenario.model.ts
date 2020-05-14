import { NonMedicalConnectedObject } from './nonMedicalConnectedObject.model';
import { Room } from './room.model';
import { Time } from '@angular/common';


export class BulbScenario{
    nonMedicalConnectedObject: NonMedicalConnectedObject;
    room: Room;
    status: String;
    startHour: Time;
    endHour: Time; 
    color: String;

}