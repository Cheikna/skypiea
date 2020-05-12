import { Component, OnInit } from '@angular/core';
import { Room } from 'src/app/models/room.model';
import { Resident } from 'src/app/models/resident.model';
import { NonMedicalObjectType, getNonMedicalObjectTypeName } from 'src/app/enums/nonMedicalObjectType.enum';
import { nonMedicalObjectIcons } from 'src/app/util/nonMedicalObjectIcons.util';
import { stateInfo, State } from 'src/app/enums/state.enum';
import { RoomService } from 'src/app/services/room.service';
import { WebStorageService } from 'src/app/util/web-storage.service';
import { storageKey } from 'src/app/util/storageKey.util';

@Component({
  selector: 'app-multi-object-scenario-config',
  templateUrl: './multi-object-scenario-config.component.html',
  styleUrls: ['./multi-object-scenario-config.component.scss']
})
export class MultiObjectScenarioConfigComponent implements OnInit {

  room: Room;  
  resident: Resident;
  selectedObjectTypes: NonMedicalObjectType[];
  NonMedicalObjectType = NonMedicalObjectType;

  // To import
  nonMedicalObjectIcons = nonMedicalObjectIcons;
  typeName = (type) => getNonMedicalObjectTypeName(type);
  stateInfo = stateInfo;
  stateInfoArray: any[];
  objectsFromServiceCall: Array<any>;
  nonMedicalObjectTypes: any[];

  constructor(private roomService: RoomService, private webStorageService: WebStorageService) {
    this.stateInfoArray = Object.entries(stateInfo);
    this.objectsFromServiceCall = new Array<string>();
    this.room = new Room();
    this.nonMedicalObjectTypes = [];
    this.room.state = State.OPERATIONAL;
    const entries: any[] = Object.entries(nonMedicalObjectIcons);
    entries.forEach((entry) => {
      this.nonMedicalObjectTypes.push(entry[1]);
    });
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
    this.selectedObjectTypes = type;
  }



}
