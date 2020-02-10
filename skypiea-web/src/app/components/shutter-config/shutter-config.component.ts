import { Component, OnInit } from '@angular/core';
import { WebStorageService } from 'src/app/util/web-storage.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-shutter-config',
  templateUrl: './shutter-config.component.html',
  styleUrls: ['./shutter-config.component.scss']
})
export class ShutterConfigComponent implements OnInit {
  nonMedicalConnectedObject: any;
  setting: any;
  input: any;
  statusList = ['ON','OFF'];

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
