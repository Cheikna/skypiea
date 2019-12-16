import { Component, OnInit, OnChanges } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { RoomService } from 'src/app/services/room.service';
import { Room } from 'src/app/models/room.model';

@Component({
  selector: 'app-room-information',
  templateUrl: './room-information.component.html',
  styleUrls: ['./room-information.component.scss']
})
export class RoomInformationComponent implements OnInit {
  
  private doorNumber: number;
  room: Room;

  constructor(private route: ActivatedRoute, private roomService: RoomService) { }

  ngOnInit() {
    let doorNumberParam = this.route.snapshot.paramMap.get('doorNumber');
    try{
      this.doorNumber = parseInt(doorNumberParam);
      this.roomService.getRoomDetail(this.doorNumber).subscribe((data: Room) => {
        this.room = data;
      });
    } catch(e){
      console.error(e);
    }
  }

}
