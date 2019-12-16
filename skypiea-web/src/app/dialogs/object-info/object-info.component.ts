import { Component, OnInit } from '@angular/core';
import { NonMedicalConnectedObject } from 'src/app/models/nonMedicalConnectedObject.model';
import { Bulb } from 'src/app/models/bulb.model';
import { NonMedicalObjectType } from 'src/app/enums/nonMedicalObjectType.enum';

@Component({
  selector: 'app-object-info',
  templateUrl: './object-info.component.html',
  styleUrls: ['./object-info.component.scss']
})
export class ObjectInfoComponent implements OnInit {

  nonMedicalConnectedObject;
  NonMedicalConnectedObjectType = NonMedicalObjectType;
  
  constructor() { }

  ngOnInit() {
    
    console.log(JSON.stringify(this.nonMedicalConnectedObject));
    //this.objectsInJSON = JSON.parse(JSON.stringify(this.nonMedicalConnectedObject));
  }

}
