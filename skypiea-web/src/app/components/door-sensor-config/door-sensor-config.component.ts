import { Component, OnInit } from '@angular/core';
import { WebStorageService } from 'src/app/util/web-storage.service';

@Component({
  selector: 'app-door-sensor-config',
  templateUrl: './door-sensor-config.component.html',
  styleUrls: ['./door-sensor-config.component.scss']
})
export class DoorSensorConfigComponent implements OnInit {
  nonMedicalConnectedObject: any;
  setting: any;

  constructor(private webStorageService: WebStorageService) {
  }

  ngOnInit() {
    this.nonMedicalConnectedObject = this.webStorageService.temporaryData;
    this.setting = this.nonMedicalConnectedObject.currentSetting;
  }

}
