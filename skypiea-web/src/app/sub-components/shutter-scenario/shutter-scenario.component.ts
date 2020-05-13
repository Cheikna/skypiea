import { Component, OnInit } from '@angular/core';
import { ShutterScenarioService } from 'src/app/services/shutter-scenario.service';
import { RoomService } from 'src/app/services/room.service';
import { WebStorageService } from 'src/app/util/web-storage.service';
import { Room } from 'src/app/models/room.model';
import { Resident } from 'src/app/models/resident.model';
import { ShutterScenario } from 'src/app/models/shutterScenario.model';
import { State } from 'src/app/enums/state.enum';
import { storageKey } from 'src/app/util/storageKey.util';
import { NgForm } from '@angular/forms';
import { NonMedicalObjectType } from 'src/app/enums/nonMedicalObjectType.enum';

@Component({
  selector: 'app-shutter-scenario',
  templateUrl: './shutter-scenario.component.html',
  styleUrls: ['./shutter-scenario.component.scss']
})
export class ShutterScenarioComponent implements OnInit {

  room: Room;
  resident: Resident;
  status: String;
  startHour: Date;
  position: String;
  objectsFromServiceCall: Array<any>;
  shutterScenario: any;
  nonMedicalConnectedObject: any;

  constructor(private webStorageService: WebStorageService, private roomService: RoomService,private shutterScenarioService: ShutterScenarioService) { }

  ngOnInit() {
    this.shutterScenario = new ShutterScenario();
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
      if(object.nonMedicalObjectType == NonMedicalObjectType.SHUTTER){
        this.shutterScenario.nonMedicalConnectedObject = object;
      }
    });
    this.shutterScenario.status = form.value['status'];
    this.shutterScenario.startHour = form.value['startHour'];
    this.shutterScenario.position = form.value['position'];
    this.shutterScenario.room = this.room;
    this.shutterScenarioService.save(this.shutterScenario).subscribe((data)=> {
      this.shutterScenario = data;
    });
  }

}
