import { Component, OnInit, Input, OnChanges } from '@angular/core';
import { Router } from '@angular/router';
import { Room } from 'src/app/models/room.model';
import { BehaviorSubject } from 'rxjs';

@Component({
  selector: 'app-floor-one-plan',
  templateUrl: './floor-one-plan.component.html',
  styleUrls: ['./floor-one-plan.component.scss']
})
export class FloorOnePlanComponent implements OnInit, OnChanges {

  @Input() rooms: Array<any>;

  // Room which is hovered by the user
  hoverRoomInfo;
  isHover: boolean = false;
  private roomInfoByDoorNumberMap: Map<string, any>;



  constructor(private router: Router) {
    this.roomInfoByDoorNumberMap = new Map<string, any>();
  }

  ngOnInit() {
  }

  onRectClick(event) {
    let target;
    if(event && (target = event.target)){
      let htmlId = target.id;
      const doorNumber = this.roomInfoByDoorNumberMap.get(htmlId).doorNumber;
      this.router.navigate(['/monitoring/room', doorNumber]);
    }

    /*console.log(JSON.stringify(event.srcElement.id));
    console.log(JSON.stringify(event.target.id ));
    console.log(JSON.stringify(event.currentTarget.id ));*/
  }

  ngOnChanges(changes: import("@angular/core").SimpleChanges): void {
    if (this.rooms && this.rooms.length > 0) {
      // Initialization of the images
      this.rooms.forEach((room) => {
        this.roomInfoByDoorNumberMap.set(room.svgPoint, room);
      });
    }
  }

  mouseOut(){
    this.isHover = false;
  }

  getRoomInfo(event) {    
    if (event && event.target) {
      let id = event.target.id;
      if(id){
        this.isHover = true;
        this.hoverRoomInfo = this.roomInfoByDoorNumberMap.get(id);
      }
    }
  }
}
