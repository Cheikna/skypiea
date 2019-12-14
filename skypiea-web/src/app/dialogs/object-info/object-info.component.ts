import { Component, OnInit } from '@angular/core';
import { NonMedicalConnectedObject } from 'src/app/models/nonMedicalConnectedObject.model';
import { Bulb } from 'src/app/models/bulb.model';
import { NonMedicalObjectType } from 'src/app/enums/nonMedicalObjectType.enum';
import { DoorSensor } from 'src/app/models/doorSensor.model';

@Component({
  selector: 'app-object-info',
  templateUrl: './object-info.component.html',
  styleUrls: ['./object-info.component.scss']
})
export class ObjectInfoComponent implements OnInit {

  nonMedicalConnectedObject: NonMedicalConnectedObject;
  NonMedicalConnectedObjectType = NonMedicalObjectType;
  objectsInJSON : JSON;
  
  constructor() { }

  ngOnInit() {
    this.objectsInJSON = JSON.parse(JSON.stringify(this.nonMedicalConnectedObject));
  }

}
