import { Component, OnInit } from '@angular/core';
import { WebStorageService } from 'src/app/util/web-storage.service';
import { Router } from '@angular/router';
import { NonMedicalConnectedObjectService} from 'src/app/services/non-medical-connected-object.service'; 

@Component({
  selector: 'app-alarm-clock-config',
  templateUrl: './alarm-clock-config.component.html',
  styleUrls: ['./alarm-clock-config.component.scss']
})
export class AlarmClockConfigComponent implements OnInit {
  nonMedicalConnectedObject: any;
  setting: any;
  connectedObject: any;

  // List of the alarm clock properties
  ringingClock: Date ;
  myStatus: boolean; 
  status: String; 

  constructor(private webStorageService: WebStorageService, private router: Router, private nonMedicalConnectedObjectService: NonMedicalConnectedObjectService) {
  }

  ngOnInit() {
    this.nonMedicalConnectedObject = this.webStorageService.temporaryData;
    this.setting = this.nonMedicalConnectedObject.currentSetting;
    console.log(JSON.stringify(this.setting));


    if(this.setting){
      this.ringingClock = this.setting.ringingClock;
      this.status=this.setting.status;
    }
  }

  save(){
    // We affect the new value to the object 
    console.log(this.setting.ringingClock);
    this.changed();
    this.setting.status = this.status; 
    this.setting.currentTime = this.ringingClock;
    this.nonMedicalConnectedObjectService.saveNewObjectSetting(this.nonMedicalConnectedObject.id, this.setting).subscribe((data)=> {
    this.setting = data;
    }); 
  }

  redirectToObjectListPage(){
    this.router.navigate(["ObjectIhm"]);
  }

  changed(){
    if (this.myStatus === false){
        this.status= "OFF"
    }
    if (this.myStatus === true){
      this.status= "ON"
  } 
} 
}
