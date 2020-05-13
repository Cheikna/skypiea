import { Component, OnInit } from '@angular/core';
import { AlarmClockScenario } from 'src/app/models/alarmClockScenario.model';
import { WebStorageService } from 'src/app/util/web-storage.service';
import { RoomService } from 'src/app/services/room.service';
import { Room } from 'src/app/models/room.model';
import { State } from 'src/app/enums/state.enum';
import { Resident } from 'src/app/models/resident.model';
import { storageKey } from 'src/app/util/storageKey.util';
import { NgForm } from '@angular/forms';
import { NonMedicalObjectType } from 'src/app/enums/nonMedicalObjectType.enum';
import { AlarmClockScenarioService } from 'src/app/services/alarm-clock-scenario.service';


@Component({
  selector: 'app-alarm-clock-scenario',
  templateUrl: './alarm-clock-scenario.component.html',
  styleUrls: ['./alarm-clock-scenario.component.scss']
})
export class AlarmClockScenarioComponent implements OnInit {

  room: Room;
  resident: Resident;
  status: String;
  startHour: Date;
  objectsFromServiceCall: Array<any>;
  alarmClockScenario: any;
  nonMedicalConnectedObject: any;
  

  constructor(private webStorageService: WebStorageService, private roomService: RoomService,private alarmClockScenarioService: AlarmClockScenarioService) {

  }

  ngOnInit() {
    this.alarmClockScenario = new AlarmClockScenario();
    this.room = new Room();
    this.room.state = State.OPERATIONAL;
    this.objectsFromServiceCall = new Array<string>();
    this.resident = this.webStorageService.getSessionAttribute(storageKey.USER_INFO.name);
    this.roomService.getResidentRoomDetails(this.resident.id).subscribe((data: Room) => {
      this.room = data;
      this.objectsFromServiceCall = data.nonMedicalConnectedObjects;
    });
  }

  saveConfig(form: NgForm) {
    this.objectsFromServiceCall.forEach((object) => {
      if(object.nonMedicalObjectType == NonMedicalObjectType.ALARM_CLOCK){
        this.alarmClockScenario.nonMedicalConnectedObject = object;
      }
    });
    this.alarmClockScenario.status = form.value['status'];
    this.alarmClockScenario.startHour = form.value['startHour'];
    this.alarmClockScenario.room = this.room;
    this.alarmClockScenarioService.save(this.alarmClockScenario).subscribe((data)=> {
      this.alarmClockScenario = data;
    });
  }
}
