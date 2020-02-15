import { Component, OnInit } from '@angular/core';
import { WebStorageService } from 'src/app/util/web-storage.service';
import { Router } from '@angular/router'; 
import { NonMedicalConnectedObjectService } from 'src/app/services/non-medical-connected-object.service';

@Component({
  selector: 'app-bulb-config',
  templateUrl: './bulb-config.component.html',
  styleUrls: ['./bulb-config.component.scss']
})
export class BulbConfigComponent implements OnInit {

  nonMedicalConnectedObject: any;
  setting: any;
  myStatus: boolean; 
  status: String; 
  myColor: String; 
  selected: String; 
  

  constructor(private webStorageService: WebStorageService,private router : Router, private nonMedicalConnectedObjectService: NonMedicalConnectedObjectService) {
  }

  ngOnInit() {
    this.nonMedicalConnectedObject = this.webStorageService.temporaryData;
    this.setting = this.nonMedicalConnectedObject.currentSetting;

    
    if(this.setting){
      this.status=this.setting.status;
    }
  }

  save(){
    this.changed();
    console.log(this.selected);
    this.setting.currentColor = this.selected; 
    this.setting.status = this.status; 
    this.nonMedicalConnectedObjectService.saveNewObjectSetting(this.nonMedicalConnectedObject.id, this.setting).subscribe((data)=> {
    this.setting = data;
    }); 
  }

  redirectToObjectListPage(){
    this.router.navigate(["ObjectIhm"]);
  }

  changed(){
    if (this.myStatus === false){
        this.status= "OFF"
    }
    if (this.myStatus === true){
      this.status= "ON"
  } 
} 
}
