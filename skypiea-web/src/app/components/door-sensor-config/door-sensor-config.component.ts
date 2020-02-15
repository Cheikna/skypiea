import { Component, OnInit } from '@angular/core';
import { WebStorageService } from 'src/app/util/web-storage.service';
import { Router } from '@angular/router';
import { NonMedicalConnectedObjectService } from 'src/app/services/non-medical-connected-object.service';

@Component({
  selector: 'app-door-sensor-config',
  templateUrl: './door-sensor-config.component.html',
  styleUrls: ['./door-sensor-config.component.scss']
})
export class DoorSensorConfigComponent implements OnInit {
  nonMedicalConnectedObject: any;
  setting: any;

   // List of the door Sensor properties
   doorLocked: boolean;
   isDoorLocked: boolean; 

  constructor(private webStorageService: WebStorageService, private router: Router, private nonMedicalConnectedObjectService: NonMedicalConnectedObjectService) {
  }

  ngOnInit() {
    this.nonMedicalConnectedObject = this.webStorageService.temporaryData;
    this.setting = this.nonMedicalConnectedObject.currentSetting; 
  }

  save(){
    this.setting.isDoorLocked = this.isDoorLocked;
    this.nonMedicalConnectedObjectService.saveNewObjectSetting(this.nonMedicalConnectedObject.id, this.setting).subscribe((data)=> {
    this.setting = data;
    }); 
  }

  redirectToObjectListPage(){
    this.router.navigate(["ObjectIhm"]);
  }
  changed(){
    if (this.doorLocked === false){
        this.isDoorLocked= false;
    }
    if (this.doorLocked === true){
      this.isDoorLocked= true;
  } 
} 

}
