import { Component, OnInit } from '@angular/core';
import { ElectronicTag } from 'src/app/models/electronictag.model';
import { ElectronicTagService } from 'src/app/services/electronictag.service';
import { ActivatedRoute } from '@angular/router';
import { HistoryMoving } from 'src/app/models/historyMoving.model';
import { FormControl } from '@angular/forms';

@Component({
  selector: 'app-tracking',
  templateUrl: './tracking.component.html',
  styleUrls: ['./tracking.component.scss']
})
export class TrackingComponent implements OnInit {
  //create array of history moving : movings
  movings: Array<HistoryMoving>;
  allMovings: Array<HistoryMoving>;
  //add electronictag object
  electronicTag: ElectronicTag;
  dateBegin = new FormControl(new Date());
  //declare service inside constructor
  constructor(private route: ActivatedRoute, private electronicTagService: ElectronicTagService) { 
    this.electronicTagService = electronicTagService;
    this.allMovings = new Array<HistoryMoving>();
    this.movings = new Array<HistoryMoving>();
  }

  ngOnInit() {
    //Get ID from url (Should not be null)
    let id = this.route.snapshot.paramMap.get('id');
    //Call service method from constructor to get ElectronicTag of a resident
    this.electronicTagService.getResidentHistoryMoving(parseInt(id)).subscribe((data: ElectronicTag) => {      
      this.allMovings = data.historyMoving;
      if(this.allMovings){
        this.allMovings.sort((obj1, obj2) => {
          if(obj1.time != null && obj2.time == null){
            return 1;
          } else if(obj1.time == null && obj2.time != null){
            return -1;
          } else if(obj1.time == null || obj2.time == null){
            return -1;
          }
          return (new Date(obj2.time).getTime()) - (new Date(obj1.time).getTime());
        });
      }
      Object.assign(this.movings, this.allMovings);
      /*movings.forEach(move => {
        console.log(move.posX + " " + move.posY);
      });*/
    });
    // Display data to console
    //console.log(JSON.stringify(id));
  }

  updatePositionsToDisplay(){
    this.movings = this.allMovings.filter((position) => {
      const dateBeginValue: Date = this.dateBegin.value;
      const time: number = dateBeginValue.getTime();
      const positionDate: Date = new Date(position.time);
      if(positionDate && positionDate.getTime() > time){
        return true;
      }
      return false;
    });
  }

  resetPositionsToDisplay(){
    this.dateBegin.setValue(new Date());
    Object.assign(this.movings, this.allMovings);
  }

}
