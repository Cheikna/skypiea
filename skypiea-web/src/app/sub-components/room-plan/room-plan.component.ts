import { Component, OnInit, Input, OnChanges } from '@angular/core';
import { Resident } from 'src/app/models/resident.model';
import { NonMedicalConnectedObject } from 'src/app/models/nonMedicalConnectedObject.model';
import { nonMedicalObjectIcons } from 'src/app/util/nonMedicalObjectIcons.util';

@Component({
  selector: 'app-room-plan',
  templateUrl: './room-plan.component.html',
  styleUrls: ['./room-plan.component.scss']
})
export class RoomPlanComponent implements OnInit, OnChanges {

  private readonly pointsNumberOnMap: number = 12;
  // To import
  nonMedicalObjectIcons = nonMedicalObjectIcons;

  @Input() nonMedicalConnectedObjects: Array<NonMedicalConnectedObject>;

  // Associative array : svgPoint => iconId
  imageSource;

  constructor() {
    this.imageSource = new Array();
  }

  ngOnInit() {    
    
  }  

  ngOnChanges(changes: import("@angular/core").SimpleChanges): void {
    if(!changes.nonMedicalConnectedObjects.isFirstChange()){
      if (this.nonMedicalConnectedObjects) {
        // Initialization of the images
        this.nonMedicalConnectedObjects.forEach((object) => {
          this.imageSource[object.svgPoint] = nonMedicalObjectIcons[object.nonMedicalObjectType].id;
        });
      }
    }
  }

  getSVGImageId(circleId: string): string{
    if(this.imageSource[circleId]){
      return `url(#${this.imageSource[circleId]})`;
    }
    return "";

  }

  test(str: any){
    console.log(str);
  }

}
