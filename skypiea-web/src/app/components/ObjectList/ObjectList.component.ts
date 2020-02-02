import { Component, OnInit } from '@angular/core';
import { NonMedicalConnectedObject } from 'src/app/models/nonMedicalConnectedObject.model';
import { RoomService } from 'src/app/services/room.service';
import { Room } from 'src/app/models/room.model';
import { MatDialog } from '@angular/material/dialog';
import { ObjectInfoComponent } from 'src/app/dialogs/object-info/object-info.component';
import { WebStorageService } from 'src/app/util/web-storage.service';
import { storageKey } from 'src/app/util/storageKey.util';
import { ObjectSetting } from 'src/app/models/objectSetting.model';
import { NonMedicalObjectType } from 'src/app/enums/nonMedicalObjectType.enum';
import { Router, NavigationExtras } from '@angular/router';

@Component({
  selector: 'app-ObjectList',
  templateUrl: './ObjectList.component.html',
  styleUrls: ['./ObjectList.component.scss']
})
export class ObjectListComponent implements OnInit {

  residentId: number;
  room: Room = new Room();

  nonMedicalConnectedObjects: Array<any>;

  constructor(private router: Router, private roomService: RoomService, private dialog: MatDialog, private webStorageService: WebStorageService) {

  }


  ngOnInit() {
    const userInfoFromStorage = this.webStorageService.getSessionAttribute(storageKey.USER_INFO.name);
    this.residentId = userInfoFromStorage.id;
    this.roomService.getResidentRoomDetails(this.residentId).subscribe((data: Room) => {
      this.nonMedicalConnectedObjects = data.nonMedicalConnectedObjects;
    });
  }

  openDialogInfo(nonMedicalConnectedObject) {
    let dialogRef = this.dialog.open(ObjectInfoComponent, { panelClass: 'login-dialog' });
    if (!nonMedicalConnectedObject.currentSetting) {
      let setting: ObjectSetting = new ObjectSetting();
      setting.nonMedicalObjectType = nonMedicalConnectedObject.nonMedicalObjectType;
      nonMedicalConnectedObject.currentSetting = setting;
    }
    else {
      nonMedicalConnectedObject.currentSetting.nonMedicalObjectType = nonMedicalConnectedObject.nonMedicalObjectType;
    }

    dialogRef.componentInstance.nonMedicalConnectedObject = nonMedicalConnectedObject.currentSetting;
  }

  redirectToObjectConfigurationPage(object) {
    if (object.nonMedicalObjectType == NonMedicalObjectType.ALARM_CLOCK) {
      this.webStorageService.temporaryData = object;
      this.router.navigate(["object-list/alarm-clock"]);
    }

    if (object.nonMedicalObjectType == NonMedicalObjectType.BULB){
      this.webStorageService.temporaryData = object; 
      this.router.navigate(["object-list/bulb"]);
    }

    if (object.nonMedicalObjectType == NonMedicalObjectType.DOOR_SENSOR){
      this.webStorageService.temporaryData = object; 
      this.router.navigate(["object-list/door-sensor"]);
    }
  }
}
