import { Component, OnInit, Input } from '@angular/core';
import { Room } from 'src/app/models/room.model';
import { Resident } from 'src/app/models/resident.model';
import { nonMedicalObjectIcons } from 'src/app/util/nonMedicalObjectIcons.util';
import { Router } from '@angular/router';

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

  constructor(private router: Router) { }

  ngOnInit() {
  }

  moreDetailsOnRoom(doorNumber: number){    
    this.router.navigate(['/monitoring/room', doorNumber]);
  }

}
