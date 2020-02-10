import { Component, OnInit } from '@angular/core';
import { RoomService } from 'src/app/services/room.service';
import { Room } from 'src/app/models/room.model';
import { FormGroup, FormBuilder, FormControl } from '@angular/forms';
import { stateInfo } from 'src/app/enums/state.enum';

@Component({
  selector: 'app-monitoring',
  templateUrl: './monitoring.component.html',
  styleUrls: ['./monitoring.component.scss']
})
export class MonitoringComponent implements OnInit {

  roomsFilterForm: FormGroup;

  roomsFromBackCall: Array<Room>;
  roomsFiltered: Array<Room>;

  constructor(private roomService: RoomService, private formBuilder: FormBuilder) { 
    this.roomsFiltered = new Array<Room>();
    this.initializeForms();
  }

  ngOnInit() {
    this.roomService.getRoomsSummary().subscribe((data: Array<Room>) => {
      this.roomsFromBackCall = Object.assign(new Array<Room>(), data);
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
