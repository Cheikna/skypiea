import { Component, OnInit, Input, OnChanges } from '@angular/core';
import { Router } from '@angular/router';
import { stateInfo, State } from 'src/app/enums/state.enum';

@Component({
  selector: 'app-floor-plan',
  templateUrl: './floor-plan.component.html',
  styleUrls: ['./floor-plan.component.scss']
})
export class FloorPlanComponent implements OnInit, OnChanges {

  @Input() rooms: Array<any>;
  // Room which is hovered by the user
  roomOvered: any;
  // Info for stairs and elevator
  otherRoomInfo: string;
  /**
   * key   -> svgPoint
   * value -> room
   */
  roomBySvgPointMap;
  isHover: boolean = false;
  stateInfoArray: any[];
  stateInfo = stateInfo;

  private readonly floor = 1;
  private readonly numberOfRoomsByFloor = 100;
  readonly doorBegin: string = "room_";

  constructor(private router: Router) {
    this.roomBySvgPointMap = new Map();
    this.stateInfoArray = Object.entries(stateInfo);
  }

  ngOnInit() {
  }

  ngOnChanges(changes: import("@angular/core").SimpleChanges): void {
    if (this.rooms && this.rooms.length > 0) {
      // Initialization of the images
      this.rooms.forEach((room) => {
        /* The first number is the floor number
         * ex: 102 means it is on the floor 1
         */
        const doorNumber = room.doorNumber;
        const floor = Math.floor(doorNumber / this.numberOfRoomsByFloor);
        const lastNumber: number = doorNumber % this.numberOfRoomsByFloor;
        let lastNumberWithZero: string = lastNumber.toString();
        if (lastNumber < 10) {
          lastNumberWithZero = `0${lastNumber}`;
        }
        this.roomBySvgPointMap.set(`${this.doorBegin}${lastNumberWithZero}`, room);
      });
    }
  }

  getRoomFillColor(svgPoint: string): string {
    const defaultColor: string = stateInfo.OPERATIONAL.color;
    const room = this.roomBySvgPointMap.get(svgPoint);
    if(room){
      const roomState = room.state;
      if(roomState){
        return this.stateInfo[roomState].color;
      }
    }
    return defaultColor;
  }

  roomMouseOut() {
    this.isHover = false;
    this.roomOvered = null;
    this.otherRoomInfo = null;
  }

  roomMouseOver(event) {
    this.isHover = true;
    const room = this.getRoomFromEvent(event);
    if (room) {
      this.roomOvered = room;
    } else if (event != null && event.target != null) {
      let id = event.target.id;
      if (id.includes("elevator")) {
        this.otherRoomInfo = "Elevator";
      } else if (id.includes("stairs")) {
        this.otherRoomInfo = "Stairs";
      } else if (id.includes("storage")) {
        this.otherRoomInfo = "Storage";
      }
    }
  }

  onRoomClick(event) {
    const room = this.getRoomFromEvent(event);
    if (room) {
      this.router.navigate(['/monitoring/room', room.doorNumber]);
    }
  }

  private getRoomFromEvent(event) {
    if (event && event.target) {
      let svgPoint = event.target.id;
      if (svgPoint) {
        //Retrieve the room corresponding to this svg point in the map
        return this.roomBySvgPointMap.get(svgPoint);
      }
    }
    return null;
  }

}
