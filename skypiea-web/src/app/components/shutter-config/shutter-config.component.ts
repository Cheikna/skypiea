import { Component, OnInit } from '@angular/core';
import { WebStorageService } from 'src/app/util/web-storage.service';
import { Router } from '@angular/router';
import { NonMedicalConnectedObjectService } from 'src/app/services/non-medical-connected-object.service';
import { Shutter } from 'src/app/models/shutter.model';

@Component({
  selector: 'app-shutter-config',
  templateUrl: './shutter-config.component.html',
  styleUrls: ['./shutter-config.component.scss']
})
export class ShutterConfigComponent implements OnInit {
  nonMedicalConnectedObject: any;
  setting: any;
  input: any;

 // List of the shutter properties
   windowCoverage: number;
 
 

  constructor(private webStorageService: WebStorageService, private router: Router,   private nonMedicalConnectedObjectService: NonMedicalConnectedObjectService) {
  }

  ngOnInit() {
    this.nonMedicalConnectedObject = this.webStorageService.temporaryData;
    this.setting = this.nonMedicalConnectedObject.currentSetting;
    console.log(JSON.stringify(this.setting));

    // If the setting from the temp variables is not null then we can change the value
    if(this.setting){
      this.windowCoverage = this.setting.windowCoverage;
    }
  }

  save(){
        // We affect the new value to the object
        console.log(this.setting.windowCoverage)
        this.setting.windowCoverage = this.windowCoverage;
        this.nonMedicalConnectedObjectService.saveNewObjectSetting(this.nonMedicalConnectedObject.id, this.setting).subscribe((data)=> {
          this.setting = data;
        });
        // TO DO 
  }

  redirectToObjectListPage(){
    this.router.navigate(["ObjectIhm"]);
  }

}
