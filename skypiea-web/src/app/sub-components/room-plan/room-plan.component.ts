import { Component, OnInit, Input, OnChanges, Inject } from '@angular/core';
import { NonMedicalConnectedObject } from 'src/app/models/nonMedicalConnectedObject.model';
import { DOCUMENT } from '@angular/common';
import { stateInfo } from 'src/app/enums/state.enum';

@Component({
  selector: 'app-room-plan',
  templateUrl: './room-plan.component.html',
  styleUrls: ['./room-plan.component.scss']
})
export class RoomPlanComponent implements OnInit, OnChanges {

  /**
   * Map which will contain the the connected object for each svg point if there is a connected object on the point
   * key    -> svgPoint
   * value  -> nonMedicalConnectedObject
   */
  nonMedicalObjectBySvgPointMap;
  stateInfo = stateInfo;

  @Input() nonMedicalConnectedObjects: Array<NonMedicalConnectedObject>;

  constructor(@Inject(DOCUMENT) document) {
    this.nonMedicalObjectBySvgPointMap = new Map();
  }

  ngOnInit() {

  }

  ngOnChanges(changes: import("@angular/core").SimpleChanges): void {
    if (!changes.nonMedicalConnectedObjects.isFirstChange()) {
      if (this.nonMedicalConnectedObjects) {
        // Initialization of the map
        this.nonMedicalObjectBySvgPointMap.clear();
        this.nonMedicalConnectedObjects.forEach((object) => {
          this.nonMedicalObjectBySvgPointMap.set(object.svgPoint, object);
        });
      }
    }
  }

  getObjectStateColor(svgPoint: string): string {
    const objectElementFromMap = this.nonMedicalObjectBySvgPointMap.get(svgPoint);
    // Check if a element exists in the map
    if (objectElementFromMap) {
      return this.stateInfo[objectElementFromMap.state].color;
    }
    return "none";

  }

  getSVGImageId(svgPoint: string): string {
    const objectElementFromMap = this.nonMedicalObjectBySvgPointMap.get(svgPoint);
    // Check if a element exists in the map
    if (objectElementFromMap) {
      const type = objectElementFromMap.nonMedicalObjectType;
      return `url(#${type})`;
    }
    return "none";

  }

  scrollToInfo(event: any) {
    const svgPoint = event.target.id;
    // Find the object with the same svgPoint in the Map
    const object = this.nonMedicalObjectBySvgPointMap.get(svgPoint);
    // Check if the object exists in the map
    if (object) {
      // Find the element (which contain information about the state) thanks to its ID
      let objectInfoCardElement = document.getElementById(`object_info_${object.id}`);
      // Scroll to the element
      objectInfoCardElement.scrollIntoView({ behavior: "smooth" });
      // Add a class to the card to indicate the user the object he clicked on
      objectInfoCardElement.classList.add("selected-card-animation");
      // Remove the class from the element so that we can add it again after so that the animation can be played again
      setTimeout(() => {
        objectInfoCardElement.classList.remove("selected-card-animation")
      }, 3000); 
    }
  }

}
