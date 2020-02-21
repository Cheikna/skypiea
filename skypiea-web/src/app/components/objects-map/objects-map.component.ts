import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { RoomService } from 'src/app/services/room.service';
import { Room } from 'src/app/models/room.model';
import { getNonMedicalObjectTypeName } from 'src/app/enums/nonMedicalObjectType.enum';
import { stateInfo } from 'src/app/enums/state.enum';
import { WebStorageService } from 'src/app/util/web-storage.service';
import { storageKey } from 'src/app/util/storageKey.util';


@Component({
  selector: 'app-objects-map',
  templateUrl: './objects-map.component.html',
  styleUrls: ['./objects-map.component.scss']
})
export class ObjectsMapComponent implements OnInit {
  private doorNumber: number;
  room: Room;
  objectsFromServiceCall: Array<any>;
  typeName = (type) => getNonMedicalObjectTypeName(type);
  stateInfoArray: any[];

  constructor(private route: ActivatedRoute, private roomService: RoomService, private webStorageService: WebStorageService) {
    // Contain all of the objects of the room
    this.objectsFromServiceCall = new Array<string>();
    this.stateInfoArray = Object.entries(stateInfo);
  }

  ngOnInit() {
    let doorNumberParam = this.route.snapshot.paramMap.get('doorNumber');
    try {
      //this.doorNumber = parseInt(doorNumberParam);
      const resident = this.webStorageService.getSessionAttribute(storageKey.USER_INFO.name);
      if (resident) {
        console.log(resident);
        this.roomService.getResidentRoomDetails(resident.id).subscribe((data: Room) => {
          this.room = data;
          this.objectsFromServiceCall = data.nonMedicalConnectedObjects;
          console.log(JSON.stringify(this.room));
        });
      }
    } catch (e) {
      console.error(e);
    }
  }
}
