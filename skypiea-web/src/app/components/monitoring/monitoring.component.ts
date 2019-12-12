import { Component, OnInit } from '@angular/core';
import { RoomService } from 'src/app/services/room.service';
import { Room } from 'src/app/models/room.model';
import { FormGroup, FormBuilder, FormControl } from '@angular/forms';

@Component({
  selector: 'app-monitoring',
  templateUrl: './monitoring.component.html',
  styleUrls: ['./monitoring.component.scss']
})
export class MonitoringComponent implements OnInit {

  roomsFilterForm: FormGroup;

  private roomsFromBackCall: Array<Room>;
  roomsFiltered: Array<Room>;

  constructor(private roomService: RoomService, private formBuilder: FormBuilder) { 
    this.roomsFromBackCall = new Array<Room>();
    this.roomsFiltered = new Array<Room>();
    this.initializeForms();
  }

  ngOnInit() {
    this.roomService.getRoomsSummary().subscribe((data: Array<Room>) => {
      Object.assign(this.roomsFromBackCall, data);
      Object.assign(this.roomsFiltered, data);
    });
  }

  initializeForms(){
    this.roomsFilterForm = this.formBuilder.group({
      roomNumber: null,
      residentLastName: null,
      residentFirstName: null,
    });

    this.roomsFilterForm.valueChanges.subscribe(values => {
      this.onRoomsFilterFormChange(values);
    });
  }

  resetRoomsFormFilter(){
    this.roomsFilterForm.reset();
  }

  private onRoomsFilterFormChange(values: any){
    this.roomsFiltered = this.roomsFromBackCall.filter((room) => {
      if(!this.starstWith(room.resident.lastName, values.residentLastName)){
        return false;
      }
      
      if(!this.starstWith(room.resident.firstName, values.residentFirstName)){
        return false;
      }
      
      if(values.roomNumber && room.doorNumber != values.roomNumber){
        return false;
      }

      return true;
    });
  }

  private isEmpty(str: string){
    return !str || str.trim().length == 0;
  }

  private starstWith(wholeStr: string, beginStr: string){
    return this.isEmpty(beginStr) || this.toUpper(wholeStr).startsWith(this.toUpper(beginStr));
  }

  private toUpper(str: string){
    if(str)
      return str.toUpperCase();
    return str;
  }

}
