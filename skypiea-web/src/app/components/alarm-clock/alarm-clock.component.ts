import { Component, OnInit } from '@angular/core';
import { NonMedicalConnectedObjectService } from 'src/app/services/non-medical-connected-object.service';
import { AlarmClockService } from 'src/app/services/alarm-clock.service';
import { ActivatedRoute } from '@angular/router';
import { WebStorageService } from 'src/app/util/web-storage.service';

@Component({
  selector: 'app-alarm-clock',
  templateUrl: './alarm-clock.component.html',
  styleUrls: ['./alarm-clock.component.scss']
})
export class AlarmClockComponent implements OnInit {
  nonMedicalConnectedObject: any;
  setting: any;

  constructor(private webStorageService: WebStorageService) {
  }

  ngOnInit() {
    this.nonMedicalConnectedObject = this.webStorageService.temporaryData;
    this.setting = this.nonMedicalConnectedObject.currentSetting;
  }

}
