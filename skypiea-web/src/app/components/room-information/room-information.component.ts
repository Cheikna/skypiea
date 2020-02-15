import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { RoomService } from 'src/app/services/room.service';
import { Room } from 'src/app/models/room.model';
import { getNonMedicalObjectTypeName } from 'src/app/enums/nonMedicalObjectType.enum';
import { stateInfo } from 'src/app/enums/state.enum';

@Component({
  selector: 'app-room-information',
  templateUrl: './room-information.component.html',
  styleUrls: ['./room-information.component.scss']
})
export class RoomInformationComponent implements OnInit {
  
  private doorNumber: number;
  room: Room;
  objectsFromServiceCall: Array<any>;
  typeName = (type) => getNonMedicalObjectTypeName(type);
  stateInfoArray: any[];

  constructor(private route: ActivatedRoute, private roomService: RoomService) {  
    // Contain all of the objects of the room
    this.objectsFromServiceCall = new Array<string>();
    this.stateInfoArray = Object.entries(stateInfo);
  }

  ngOnInit() {
    let doorNumberParam = this.route.snapshot.paramMap.get('doorNumber');
    try{
      this.doorNumber = parseInt(doorNumberParam);
      this.roomService.getRoomDetail(this.doorNumber).subscribe((data: Room) => {
        this.room = data;
        this.objectsFromServiceCall = data.nonMedicalConnectedObjects;
      });
    } catch(e){
      console.error(e);
    }
  }

}
