import { Component, OnInit, Input } from '@angular/core';
import { NonMedicalObjectType } from 'src/app/enums/nonMedicalObjectType.enum';
import { WebStorageService } from 'src/app/util/web-storage.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-object-configuration-groupe2',
  templateUrl: './object-configuration-groupe2.component.html',
  styleUrls: ['./object-configuration-groupe2.component.scss']
})
export class ObjectConfigurationGroupe2Component implements OnInit {


  @Input() nonMedicalConnectedObjects;

  constructor(private webStorageService: WebStorageService, private router: Router) { }

  ngOnInit() {
  }

  redirectToObjectConfigurationPage(object) {
    if (object.nonMedicalObjectType == NonMedicalObjectType.ALARM_CLOCK) {
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
  }


}
