import { Component, OnInit, Input } from '@angular/core';
import { Room } from 'src/app/models/room.model';
import { Resident } from 'src/app/models/resident.model';
import { nonMedicalObjectIcons } from 'src/app/util/nonMedicalObjectIcons.util';

@Component({
  selector: 'app-room-summary',
  templateUrl: './room-summary.component.html',
  styleUrls: ['./room-summary.component.scss']
})
export class RoomSummaryComponent implements OnInit {

  @Input() room: Room;
  @Input() resident: Resident;

  // To import
  nonMedicalObjectIcons = nonMedicalObjectIcons;

  constructor() { }

  ngOnInit() {
  }

  moreDetailsOnRoom(roomId: number){
    console.log("You want more details on the room with the id (!= room number) : " + roomId);
  }

}
