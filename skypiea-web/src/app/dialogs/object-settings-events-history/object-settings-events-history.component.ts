import { Component, OnInit, Inject, ViewChild, AfterViewInit } from '@angular/core';
import { MAT_DIALOG_DATA } from '@angular/material/dialog';
import { getNonMedicalObjectTypeName, NonMedicalObjectType } from 'src/app/enums/nonMedicalObjectType.enum';
import { MatTableDataSource } from '@angular/material/table';
import { MatPaginator } from '@angular/material/paginator';

@Component({
  selector: 'app-object-settings-events-history',
  templateUrl: './object-settings-events-history.component.html',
  styleUrls: ['./object-settings-events-history.component.scss']
})
export class ObjectSettingsEventsHistoryComponent implements OnInit, AfterViewInit {
  
  displayedColumns = {
    historyEventsDisplayedColumns: ['startTime', 'endTime', 'object', 'description', 'reachedState'],
    bulbDisplayedColumns: ['savingDate', 'status', 'color'],
    shutterDisplayedColumns: ['savingDate', 'status', 'automaticModeEnabled', 'windowCoverage'],
    temperatureControllerDisplayedColumns: ['savingDate', 'status', 'temperatureSettled', 'healthingConnected', 'airConditionnerConnected'],
    smokeSensorDisplayedColumns: ['savingDate', 'status', 'minThreshold', 'maxThreshold']
  }
  settingsDataSource = new MatTableDataSource<any>();
  eventsDataSource = new MatTableDataSource<any>();
  @ViewChild('settingsPaginator', {static: false}) settingsPaginator: MatPaginator;
  @ViewChild('eventsPaginator', {static: false}) eventsPaginator: MatPaginator;

  nonMedicalConnectedObject: any;
  nonMedicalObjectTypeFormat: any;
  objectSettings: any[];
  NonMedicalObjectType = NonMedicalObjectType;

  constructor(@Inject(MAT_DIALOG_DATA) public data: any) { 
    this.objectSettings = [];
  }

  ngOnInit() {
    this.nonMedicalConnectedObject = this.data.nonMedicalConnectedObject;
    if(this.nonMedicalConnectedObject){
      this.nonMedicalObjectTypeFormat = getNonMedicalObjectTypeName(this.nonMedicalConnectedObject.nonMedicalObjectType);
      this.objectSettings = this.nonMedicalConnectedObject.objectSettings;
      if(this.objectSettings){
        this.objectSettings.sort((setting1, setting2) => this.sortByDateDesc(setting1.savingDate, setting2.savingDate));
        this.settingsDataSource.data = this.objectSettings;
      }
    }
    if(this.nonMedicalConnectedObject.historyEvents){
      this.nonMedicalConnectedObject.historyEvents.sort((event1, event2) => this.sortByDateDesc(event1.startTime, event2.startTime));
    }
    this.eventsDataSource.data = this.nonMedicalConnectedObject.historyEvents;    
  }

  ngAfterViewInit(): void {
    this.settingsDataSource.paginator = this.settingsPaginator;
    this.eventsDataSource.paginator = this.eventsPaginator;
  }

  sortByDateDesc(time1, time2): number {
    if(time1 != null && time2 == null){
      return 1;
    } else if(time1 == null && time2 != null){
      return -1;
    } else if(time1 == null || time2 == null){
      return -1;
    }
    return (new Date(time2).getTime()) - (new Date(time1).getTime());
  }
}
