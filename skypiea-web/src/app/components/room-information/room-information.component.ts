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
  
  private roomId: number;
  room: Room;

  constructor(private route: ActivatedRoute, private roomService: RoomService) { }

  ngOnInit() {
    let idParam = this.route.snapshot.paramMap.get('roomId');
    try{
      this.roomId = parseInt(idParam);
      this.roomService.getRoomDetail(this.roomId).subscribe((data: Room) => {
        this.room = data;
      });
    } catch(e){
      console.error(e);
    }
  }

}
