import { Component, OnInit } from '@angular/core';
import { WebStorageService } from 'src/app/util/web-storage.service';

@Component({
  selector: 'app-bulb',
  templateUrl: './bulb.component.html',
  styleUrls: ['./bulb.component.scss']
})
export class BulbComponent implements OnInit {

  nonMedicalConnectedObject: any;
  setting: any;

  constructor(private webStorageService: WebStorageService) {
  }

  ngOnInit() {
    this.nonMedicalConnectedObject = this.webStorageService.temporaryData;
    this.setting = this.nonMedicalConnectedObject.currentSetting;
  }

}
