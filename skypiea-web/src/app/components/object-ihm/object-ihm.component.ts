import { Component, OnInit } from '@angular/core';
import { ObjectInfoComponent } from 'src/app/dialogs/object-info/object-info.component';
import { RoomService } from 'src/app/services/room.service';
import { MatDialog } from '@angular/material/dialog';
import { Room } from 'src/app/models/room.model';
import { storageKey } from 'src/app/util/storageKey.util';
import { WebStorageService } from 'src/app/util/web-storage.service';
import { NonMedicalObjectType } from 'src/app/enums/nonMedicalObjectType.enum';

@Component({
  selector: 'app-object-ihm',
  templateUrl: './object-ihm.component.html',
  styleUrls: ['./object-ihm.component.scss']
})
export class ObjectIhmComponent implements OnInit {
  selectedGroup: string;

  residentId: number;
  room: Room = new Room();
  firstGroupObjects: Array<any>;
  secondGroupObjects: Array<any>; 
  nonMedicalConnectedObjects: Array<any>;

  constructor(private roomService: RoomService,private dialog: MatDialog, private webStorageService: WebStorageService) {
    this.firstGroupObjects = new Array<any>();
    this.secondGroupObjects = new Array<any>(); 
   }


  ngOnInit() {
    const userInfoFromStorage = this.webStorageService.getSessionAttribute(storageKey.USER_INFO.name);
    this.residentId = userInfoFromStorage.id;
    this.roomService.getResidentRoomDetails(this.residentId).subscribe((data: Room)=>{
      this.nonMedicalConnectedObjects= data.nonMedicalConnectedObjects;
      if(this.nonMedicalConnectedObjects != null){
        this.nonMedicalConnectedObjects.forEach((object) => {
          console.log(object.nonMedicalObjectType);
          if(object.nonMedicalObjectType == NonMedicalObjectType.SMOKE_SENSOR 
            || object.nonMedicalObjectType == NonMedicalObjectType.TEMPERATURE_CONTROLLER
            || object.nonMedicalObjectType == NonMedicalObjectType.SHUTTER
            || object.nonMedicalObjectType == NonMedicalObjectType.SUNSHINE_SENSOR){
            this.firstGroupObjects.push(object);
          }
          if(object.nonMedicalObjectType == NonMedicalObjectType.ALARM_CLOCK 
            || object.nonMedicalObjectType == NonMedicalObjectType.BULB
            || object.nonMedicalObjectType == NonMedicalObjectType.DOOR_SENSOR){
            this.secondGroupObjects.push(object);
          }
        });
      }
    });
  }

  openDialogInfo(nonMedicalConnectedObject: any){
    let dialogRef = this.dialog.open(ObjectInfoComponent, { panelClass: 'login-dialog'});
    dialogRef.componentInstance.nonMedicalConnectedObject = nonMedicalConnectedObject;
  }

  onClickObjectGroup(group: string){
    this.selectedGroup = group;
  }

}
