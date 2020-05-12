import { Component, OnInit } from '@angular/core';
import { TemperatureControllerScenario } from 'src/app/models/temperatureControllerScenario.model';
import { WebStorageService } from 'src/app/util/web-storage.service';
import { Time } from '@angular/common';
import { RoomService } from 'src/app/services/room.service';
import { Room } from 'src/app/models/room.model';
import { State } from 'src/app/enums/state.enum';
import { Resident } from 'src/app/models/resident.model';
import { storageKey } from 'src/app/util/storageKey.util';
import { NonMedicalConnectedObject } from 'src/app/models/nonMedicalConnectedObject.model';
import { NgForm } from '@angular/forms';
import { NonMedicalObjectType } from 'src/app/enums/nonMedicalObjectType.enum';
import { TemperatureControllerScenarioService } from 'src/app/services/temperature-controller-scenario.service';

@Component({
  selector: 'app-temperature-controller-scenario',
  templateUrl: './temperature-controller-scenario.component.html',
  styleUrls: ['./temperature-controller-scenario.component.scss']
})
export class TemperatureControllerScenarioComponent implements OnInit {

  room: Room;
  resident: Resident;
  status: String;
  startHour: Date;
  endHour: Date;
  temperature: number;
  objectsFromServiceCall: Array<any>;
  temperatureControllerScenario: any;
  nonMedicalConnectedObject: any;
  

  constructor(private webStorageService: WebStorageService, private roomService: RoomService,private temperatureControllerScenarioService: TemperatureControllerScenarioService) {

  }

  ngOnInit() {
    this.temperatureControllerScenario = new TemperatureControllerScenario();
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
      if(object.nonMedicalObjectType == NonMedicalObjectType.TEMPERATURE_CONTROLLER){
        this.temperatureControllerScenario.nonMedicalConnectedObjectId = object;
      }
    });
    this.temperatureControllerScenario.status = form.value['status'];
    this.temperatureControllerScenario.startHour = form.value['startHour'];
    this.temperatureControllerScenario.endHour = form.value['endHour'];
    this.temperatureControllerScenario.temperature = form.value['temperature'];
    this.temperatureControllerScenario.room = this.room;
    console.log(JSON.stringify(this.temperatureControllerScenario));
    this.temperatureControllerScenarioService.save(this.temperatureControllerScenario).subscribe((data)=> {
      this.temperatureControllerScenario = data;
    });
  }
}
