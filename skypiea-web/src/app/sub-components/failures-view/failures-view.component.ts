import { Component, OnInit, Input, OnChanges } from '@angular/core';
import { Room } from 'src/app/models/room.model';
import { State } from 'src/app/enums/state.enum';
import { getNonMedicalObjectTypeName } from 'src/app/enums/nonMedicalObjectType.enum';
import { Router } from '@angular/router';

@Component({
  selector: 'app-failures-view',
  templateUrl: './failures-view.component.html',
  styleUrls: ['./failures-view.component.scss']
})
export class FailuresViewComponent implements OnInit, OnChanges {

  @Input()rooms: Array<Room>;
  roomsWithBrokenObjects: Array<Room>;
  brokenObjects: Array<any>;
  brokenRoomsPercentage: number;
  State = State;
  getObjectTypeName = (type) => getNonMedicalObjectTypeName(type);

  constructor(private router: Router) {
    this.brokenObjects = new Array<any>();
   }

  ngOnInit() {
    
  }

  ngOnChanges(changes: import("@angular/core").SimpleChanges): void {
    if (!changes.rooms.isFirstChange()) {
      // Check if the room is not null
      if(this.rooms){
        this.roomsWithBrokenObjects = new Array<Room>();
        // Loop on each room
        this.rooms.forEach((room) => {
          let hasBrokenObjects: boolean = false;
          const roomObjects = room.nonMedicalConnectedObjects;
          if(roomObjects){
            // Loop on each object of the room to check if there is at least one object with a BROKEN state
            roomObjects.forEach((object) => {
              if(object.state == State.BROKEN || object.state == State.MISSING){
                hasBrokenObjects = true;
              }
            })
          }
          
          // Add the room in thhe broken room List if at least one object of the room is broken
          if(hasBrokenObjects){            
            this.roomsWithBrokenObjects.push(room);
          }
        });
        this.roomsWithBrokenObjects.sort((r1, r2) => r1.doorNumber - r2.doorNumber);
        // Calculate the percentage of rooms with at least one BROKEN object
        this.brokenRoomsPercentage = Math.round((this.roomsWithBrokenObjects.length / this.rooms.length) * 100);
      }
    }
  }  

  moreDetailsOnRoom(doorNumber: number){    
    this.router.navigate(['/monitoring/room', doorNumber]);
  }

}
