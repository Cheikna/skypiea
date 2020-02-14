import { Component, OnInit, Input, OnChanges } from '@angular/core';
import { Router } from '@angular/router';
import { stateInfo, State } from 'src/app/enums/state.enum';
import { Room } from 'src/app/models/room.model';

@Component({
  selector: 'app-floor-plan',
  templateUrl: './floor-plan.component.html',
  styleUrls: ['./floor-plan.component.scss']
})
export class FloorPlanComponent implements OnInit, OnChanges {

  @Input() rooms: Array<any>;
  emptyRoomDoorNumber: string = "";
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
  floorMax: number = 0;

  selectedFloor = 1;
  floorNumberCollection: Array<number>;
  readonly doorBegin: string = "room_";
  private readonly floorSeparator: string = "_";

  constructor(private router: Router) {
    this.roomBySvgPointMap = new Map();
    this.stateInfoArray = Object.entries(stateInfo);
    this.floorNumberCollection = new Array<number>();
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
        const floor = room.floor;
        if(floor && floor > this.floorMax){
          this.floorMax = floor;
        }

        const lastNumber = room.doorNumber.toString().substring(1);
        // Adding the floor number info in order to save multiple rooms which have the same end for the door number
        this.roomBySvgPointMap.set(`${floor}${this.floorSeparator}${this.doorBegin}${lastNumber}`, room);
      });
    }
    if(!this.floorMax){
      this.floorMax = 1;
    }

    this.floorNumberCollection = new Array<number>(this.floorMax);
  }

  getRoomFillColor(svgPoint: string): string {
    const defaultColor: string = stateInfo.OPERATIONAL.color;
    const room = this.getRoomFromRoomBySvgPointMap(svgPoint);
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
      // Case where there is not resident in this room : the room is not occupied
      if (id.includes(this.doorBegin)) {
        const doorNumberSplitted: any[] = id.split(this.doorBegin);
        // The index 0 contains an empty string and the index 1 contains the last numbers of room door number
        if(doorNumberSplitted.length >= 2){
          this.emptyRoomDoorNumber = this.selectedFloor + doorNumberSplitted[1];
        }
      } else if (id.includes("stairs")) {
        this.otherRoomInfo = "Stairs";
      } else if (id.includes("storage")) {
        this.otherRoomInfo = "Storage";
      } else if (id.includes("elevator")) {
        this.otherRoomInfo = "Elevator";
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
        return this.getRoomFromRoomBySvgPointMap(svgPoint);
      }
    }
    return null;
  }

  private getRoomFromRoomBySvgPointMap(svgPoint){
    return this.roomBySvgPointMap.get(`${this.selectedFloor}${this.floorSeparator}${svgPoint}`);
  }

}
