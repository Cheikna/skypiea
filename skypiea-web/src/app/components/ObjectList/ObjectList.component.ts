import { Component, OnInit } from '@angular/core';
import { NonMedicalConnectedObject } from 'src/app/models/nonMedicalConnectedObject.model';
import { NonMedicalConnectedObjectService } from 'src/app/services/non-medical-connected-object.service';
import { Observable } from 'rxjs';
import { Router } from '@angular/router';
import { RoomService } from 'src/app/services/room.service';
import { Room } from 'src/app/models/room.model';
import { MatDialog } from '@angular/material/dialog';
import { ObjectInfoComponent } from 'src/app/dialogs/object-info/object-info.component';

@Component({
  selector: 'app-ObjectList',
  templateUrl: './ObjectList.component.html',
  styleUrls: ['./ObjectList.component.scss']
})
export class ObjectListComponent implements OnInit {

  residentId: number = 3;
  room : Room = new Room();

  nonMedicalConnectedObjects: Array<NonMedicalConnectedObject>;

  constructor(private roomService: RoomService,private dialog: MatDialog) { }




  ngOnInit() {
    this.roomService.getResidentRoomDetails(this.residentId).subscribe((data: Room)=>{
      this.nonMedicalConnectedObjects=data.nonMedicalConnectedObjects;
    });
  }

  openDialogInfo(nonMedicalConnectedObject: NonMedicalConnectedObject){
    let dialogRef = this.dialog.open(ObjectInfoComponent, { panelClass: 'login-dialog'});
    dialogRef.componentInstance.nonMedicalConnectedObject = nonMedicalConnectedObject;
  }
}
