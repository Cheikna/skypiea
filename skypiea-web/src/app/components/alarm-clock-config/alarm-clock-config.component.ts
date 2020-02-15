import { Component, OnInit } from '@angular/core';
import { WebStorageService } from 'src/app/util/web-storage.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-alarm-clock-config',
  templateUrl: './alarm-clock-config.component.html',
  styleUrls: ['./alarm-clock-config.component.scss']
})
export class AlarmClockConfigComponent implements OnInit {
  nonMedicalConnectedObject: any;
  setting: any;

  constructor(private webStorageService: WebStorageService, private router: Router) {
  }

  ngOnInit() {
    this.nonMedicalConnectedObject = this.webStorageService.temporaryData;
    this.setting = this.nonMedicalConnectedObject.currentSetting;
  }

  save(){
    
  }

  redirectToObjectListPage(){
    this.router.navigate(["ObjectIhm"]);
  }
}
