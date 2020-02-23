import { Component, OnInit, Input } from '@angular/core';
import { NonMedicalObjectType } from 'src/app/enums/nonMedicalObjectType.enum';
import { WebStorageService } from 'src/app/util/web-storage.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-object-configuration-groupe1',
  templateUrl: './object-configuration-groupe1.component.html',
  styleUrls: ['./object-configuration-groupe1.component.scss']
})
export class ObjectConfigurationGroupe1Component implements OnInit {

@Input() nonMedicalConnectedObjects;

  constructor(private webStorageService: WebStorageService, private router: Router) { }

  ngOnInit() {
  }

  redirectToObjectConfigurationPage(object) {

    if (object.nonMedicalObjectType == NonMedicalObjectType.SHUTTER){
      this.webStorageService.temporaryData = object;
      this.router.navigate(["object-list/shutter"]);
    }

    if (object.nonMedicalObjectType == NonMedicalObjectType.TEMPERATURE_CONTROLLER){
      this.webStorageService.temporaryData = object;
      this.router.navigate(["object-list/temperature-controller"]);
    }

    if (object.nonMedicalObjectType == NonMedicalObjectType.SMOKE_SENSOR){
      this.webStorageService.temporaryData = object;
      this.router.navigate(["object-list/smoke-sensor"]);
    }

    if (object.nonMedicalObjectType == NonMedicalObjectType.SUNSHINE_SENSOR){
      this.webStorageService.temporaryData = object;
      this.router.navigate(["object-list/sunshine-sensor"]);
    }

    if (object.nonMedicalObjectType == NonMedicalObjectType.ALARM_CLOCK){
      this.webStorageService.temporaryData = object;
      this.router.navigate(["object-list/alarm-clock"]);
    }


    if (object.nonMedicalObjectType == NonMedicalObjectType.BULB){
      this.webStorageService.temporaryData = object;
      this.router.navigate(["object-list/bulb"]);
    }


    if (object.nonMedicalObjectType == NonMedicalObjectType.DOOR_SENSOR){
      this.webStorageService.temporaryData = object;
      this.router.navigate(["object-list/door-sensor"]);
    }


    if (object.nonMedicalObjectType == NonMedicalObjectType.SMOKE_SENSOR){
      this.webStorageService.temporaryData = object;
      this.router.navigate(["object-list/smoke-sensor"]);
    }

    if (object.nonMedicalObjectType == NonMedicalObjectType.SUNSHINE_SENSOR){
      this.webStorageService.temporaryData = object;
      this.router.navigate(["object-list/sunshine-sensor"]);
    }
  }

}
