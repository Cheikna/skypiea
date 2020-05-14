import { Component, OnInit } from '@angular/core';
import { BulbScenario } from 'src/app/models/bulbScenario.model';
import { WebStorageService } from 'src/app/util/web-storage.service';
import { RoomService } from 'src/app/services/room.service';
import { Room } from 'src/app/models/room.model';
import { State } from 'src/app/enums/state.enum';
import { Resident } from 'src/app/models/resident.model';
import { storageKey } from 'src/app/util/storageKey.util';
import { NgForm } from '@angular/forms';
import { NonMedicalObjectType } from 'src/app/enums/nonMedicalObjectType.enum';
import { BulbScenarioService } from 'src/app/services/bulb-scenario.service';

@Component({
  selector: 'app-bulb-scenario',
  templateUrl: './bulb-scenario.component.html',
  styleUrls: ['./bulb-scenario.component.scss']
})
export class BulbScenarioComponent implements OnInit {

  room: Room;
  resident: Resident;
  status: String;
  startHour: Date;
  endHour:Date;
  color: String;
  selected: String;
  objectsFromServiceCall: Array<any>;
  bulbScenario: any;
  nonMedicalConnectedObject: any;
  

  constructor(private webStorageService: WebStorageService, private roomService: RoomService,private bulbScenarioService: BulbScenarioService) {

  }

  ngOnInit() {
    this.bulbScenario = new BulbScenario();
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
      if(object.nonMedicalObjectType == NonMedicalObjectType.BULB){
        this.bulbScenario.nonMedicalConnectedObject = object;
      }
    });
    this.bulbScenario.status = form.value['status'];
    this.bulbScenario.startHour = form.value['startHour'];
    this.bulbScenario.endHour = form.value['endHour'];
    console.log(this.selected)
    this.bulbScenario.color = this.selected;
    this.bulbScenario.room = this.room;
    this.bulbScenarioService.save(this.bulbScenario).subscribe((data)=> {
      this.bulbScenario = data;
    });
  }
}

