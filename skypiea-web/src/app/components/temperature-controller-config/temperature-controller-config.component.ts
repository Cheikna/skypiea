import { Component, OnInit } from '@angular/core';
import { WebStorageService } from 'src/app/util/web-storage.service';
import { Router } from '@angular/router';
import { NonMedicalConnectedObjectService } from 'src/app/services/non-medical-connected-object.service';
import { TemperatureController} from 'src/app/models/temperatureController.model';
import { FormGroup, FormBuilder } from '@angular/forms';
import { CheckboxComponent } from 'angular-bootstrap-md';

@Component({
  selector: 'app-temperature-controller-config',
  templateUrl: './temperature-controller-config.component.html',
  styleUrls: ['./temperature-controller-config.component.scss']
})
export class TemperatureControllerConfigComponent implements OnInit {

  nonMedicalConnectedObject: any;
  setting: any;
  input: any;


  // List of the temperature controller properties
  temperatureSettled: number;
  status: string;
  
  constructor(private webStorageService: WebStorageService, private router: Router, private nonMedicalConnectedObjectService: NonMedicalConnectedObjectService) {
  }

  ngOnInit() {
    this.nonMedicalConnectedObject = this.webStorageService.temporaryData;
    this.setting = this.nonMedicalConnectedObject.currentSetting;
    console.log(JSON.stringify(this.setting));

    // If the setting from the temp variables is not null then we can change the value
    if(this.setting){
      this.temperatureSettled = this.setting.temperatureSettled;
    }
  }

  onClickOn(){
      this.status = 'ON'
  }

  onClickOff(){
    this.status = 'OFF'
  }

  save(){
        // We affect the new value to the object
        this.setting.temperatureSettled = this.temperatureSettled;
        this.setting.status = this.status;
        this.nonMedicalConnectedObjectService.saveNewObjectSetting(this.nonMedicalConnectedObject.id, this.setting).subscribe((data)=> {
          this.setting = data;
        });
        console.log(JSON.stringify(this.setting))
  }

  redirectToObjectListPage(){
    this.router.navigate(["ObjectIhm"]);
  }
}
