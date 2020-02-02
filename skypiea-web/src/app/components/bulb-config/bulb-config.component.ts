import { Component, OnInit } from '@angular/core';
import { WebStorageService } from 'src/app/util/web-storage.service';

@Component({
  selector: 'app-bulb-config',
  templateUrl: './bulb-config.component.html',
  styleUrls: ['./bulb-config.component.scss']
})
export class BulbConfigComponent implements OnInit {

  nonMedicalConnectedObject: any;
  setting: any;

  constructor(private webStorageService: WebStorageService) {
  }

  ngOnInit() {
    this.nonMedicalConnectedObject = this.webStorageService.temporaryData;
    this.setting = this.nonMedicalConnectedObject.currentSetting;
  }
}
