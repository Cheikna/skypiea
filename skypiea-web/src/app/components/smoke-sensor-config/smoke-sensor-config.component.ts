import { Component, OnInit } from '@angular/core';
import { WebStorageService } from 'src/app/util/web-storage.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-smoke-sensor-config',
  templateUrl: './smoke-sensor-config.component.html',
  styleUrls: ['./smoke-sensor-config.component.scss']
})
export class SmokeSensorConfigComponent implements OnInit {
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
