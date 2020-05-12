import { Component, OnInit, Input } from '@angular/core';

import { Room } from 'src/app/models/room.model';
import { getNonMedicalObjectTypeName, NonMedicalObjectType } from 'src/app/enums/nonMedicalObjectType.enum';
import { stateInfo, State } from 'src/app/enums/state.enum';
import { WebStorageService } from 'src/app/util/web-storage.service';
import { storageKey } from 'src/app/util/storageKey.util';
import { nonMedicalObjectIcons } from 'src/app/util/nonMedicalObjectIcons.util';
import { Resident } from 'src/app/models/resident.model';
import { RoomService } from 'src/app/services/room.service';
import {TemperatureControllerScenario} from 'src/app/models/temperatureControllerScenario.model'
import { TemperatureControllerScenarioComponent } from 'src/app/sub-components/temperature-controller-scenario/temperature-controller-scenario.component';


@Component({
  selector: 'app-object-scenario-config',
  templateUrl: './object-scenario-config.component.html',
  styleUrls: ['./object-scenario-config.component.scss']
})
export class ObjectScenarioConfigComponent implements OnInit {
  
  room: Room;  
  resident: Resident;
  selectedObjectType: NonMedicalObjectType;
  NonMedicalObjectType = NonMedicalObjectType;
  temperatureControllerScenario: TemperatureControllerScenario;
  temperatureControllerScenarioComponent: TemperatureControllerScenarioComponent;

  // To import
  nonMedicalObjectIcons = nonMedicalObjectIcons;
  typeName = (type) => getNonMedicalObjectTypeName(type);
  stateInfo = stateInfo;
  stateInfoArray: any[];
  objectsFromServiceCall: Array<any>;

  constructor(private roomService: RoomService, private webStorageService: WebStorageService) {
    this.stateInfoArray = Object.entries(stateInfo);
    this.objectsFromServiceCall = new Array<string>();
    this.room = new Room();
    this.room.state = State.OPERATIONAL;
    this.temperatureControllerScenario = new TemperatureControllerScenario();
   
  }

  ngOnInit() {
    try {
      this.resident = this.webStorageService.getSessionAttribute(storageKey.USER_INFO.name);
      if (this.resident) {
        this.roomService.getResidentRoomDetails(this.resident.id).subscribe((data: Room) => {
          this.room = data;
          this.objectsFromServiceCall = data.nonMedicalConnectedObjects;
        });
      }
    } catch (e) {
      console.error(e);
    }
  }
  openObjectScenario(type){
    this.selectedObjectType = type;
  }

}
