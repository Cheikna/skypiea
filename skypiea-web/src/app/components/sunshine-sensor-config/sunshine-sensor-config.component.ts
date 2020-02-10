import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { WebStorageService } from 'src/app/util/web-storage.service';

@Component({
  selector: 'app-sunshine-sensor-config',
  templateUrl: './sunshine-sensor-config.component.html',
  styleUrls: ['./sunshine-sensor-config.component.scss']
})
export class SunshineSensorConfigComponent implements OnInit {
  
  nonMedicalConnectedObject: any;
  setting: any;
  input: any;

  constructor(private webStorageService: WebStorageService, private router: Router) {
  }

  ngOnInit() {
    this.nonMedicalConnectedObject = this.webStorageService.temporaryData;
    this.setting = this.nonMedicalConnectedObject.currentSetting;
  }



  redirectToObjectListPage(){
    this.router.navigate(["ObjectIhm"]);
  }


}
