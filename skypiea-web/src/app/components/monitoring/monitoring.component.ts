import { Component, OnInit, AfterViewInit, ViewChild, OnDestroy } from '@angular/core';
import { RoomService } from 'src/app/services/room.service';
import { Room } from 'src/app/models/room.model';
import { FormGroup, FormBuilder, FormControl } from '@angular/forms';
import { stateInfo } from 'src/app/enums/state.enum';
import { MatTableDataSource } from '@angular/material/table';
import { MatPaginator } from '@angular/material/paginator';

@Component({
  selector: 'app-monitoring',
  templateUrl: './monitoring.component.html',
  styleUrls: ['./monitoring.component.scss']
})
export class MonitoringComponent implements OnInit, AfterViewInit, OnDestroy {
  
  readonly connectedObjectsUpdateFrequencyInMilliseconds: number = 15000;

  roomsFilterForm: FormGroup;
  roomsFromBackCall: Array<Room>;
  roomsFiltered: Array<Room>;
  totalNumberOfConnectedObjects: number;
  connectedObjectsInterval;
  displayedColumns = ['info'];
  dataSource = new MatTableDataSource<Room>();
  @ViewChild(MatPaginator, {static: true}) paginator: MatPaginator;

  constructor(private roomService: RoomService, private formBuilder: FormBuilder) { 
    this.roomsFiltered = new Array<Room>();
    this.totalNumberOfConnectedObjects = 0;
    this.initializeForms();
  }

  ngOnInit() {
    this.reloadConnectedObjects();
    this.connectedObjectsInterval = setInterval(()=> {
      this.reloadConnectedObjects();
    }, this.connectedObjectsUpdateFrequencyInMilliseconds);
  }

  private reloadConnectedObjects(){
    this.totalNumberOfConnectedObjects = 0;
    this.roomService.getRoomsSummary().subscribe((data: Array<Room>) => {
      this.roomsFromBackCall = Object.assign(new Array<Room>(), data);
      this.roomsFromBackCall.forEach((room)=>{
        const connectedObjectsList: any[] = room.nonMedicalConnectedObjects;
        if(connectedObjectsList){
          this.totalNumberOfConnectedObjects += connectedObjectsList.length;
        }
      });
      Object.assign(this.roomsFiltered, data);
      this.dataSource.data = this.roomsFiltered;
    });
  }

  ngAfterViewInit(): void {
    this.dataSource.paginator = this.paginator;
  }

  ngOnDestroy(): void {
    clearInterval(this.connectedObjectsInterval);
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
    this.dataSource.data = this.roomsFiltered;
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
