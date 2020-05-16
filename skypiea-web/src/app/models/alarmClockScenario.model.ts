import { NonMedicalConnectedObject } from './nonMedicalConnectedObject.model';
import { Room } from './room.model';
import { Time } from '@angular/common';


export class AlarmClockScenario{
    nonMedicalConnectedObject: NonMedicalConnectedObject;
    room: Room;
    status: String;
    startHour: Time;
    date: Date;

}