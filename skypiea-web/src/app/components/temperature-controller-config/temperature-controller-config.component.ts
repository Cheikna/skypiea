import { Component, OnInit } from '@angular/core';
import { WebStorageService } from 'src/app/util/web-storage.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-temperature-controller-config',
  templateUrl: './temperature-controller-config.component.html',
  styleUrls: ['./temperature-controller-config.component.scss']
})
export class TemperatureControllerConfigComponent implements OnInit {

  nonMedicalConnectedObject: any;
  setting: any;
  input: any;

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
