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
    smokeSensorDisplayedColumns: ['savingDate', 'status', 'minThreshold', 'maxThreshold'],
    sunshineSensorDisplayedColumns: ['savingDate', 'status', 'externalTemperature', 'externalSunshine'],
    defaultDisplayedColumns: ['savingDate', 'status']

  }
  settingsDataSource = new MatTableDataSource<any>();
  eventsDataSource = new MatTableDataSource<any>();
  @ViewChild('settingsPaginator', {static: false}) settingsPaginator: MatPaginator;
  @ViewChild('eventsPaginator', {static: false}) eventsPaginator: MatPaginator;

  nonMedicalConnectedObject: any;
  nonMedicalObjectTypeFormat: any;
  NonMedicalObjectType = NonMedicalObjectType;

  constructor(@Inject(MAT_DIALOG_DATA) public data: any) {
  }

  ngOnInit() {
    this.nonMedicalConnectedObject = this.data.nonMedicalConnectedObject;
    if(this.nonMedicalConnectedObject){
      this.nonMedicalObjectTypeFormat = getNonMedicalObjectTypeName(this.nonMedicalConnectedObject.nonMedicalObjectType);
      let objectSettings = this.nonMedicalConnectedObject.objectSettings;
      let historyEvents = this.nonMedicalConnectedObject.historyEvents;

      if(objectSettings){
        objectSettings.sort((setting1, setting2) => this.sortByDateDesc(setting1.savingDate, setting2.savingDate));  
        this.settingsDataSource.data = objectSettings;     
      }

      if(historyEvents){
        historyEvents.sort((event1, event2) => this.sortByDateDesc(event1.startTime, event2.startTime));
        this.eventsDataSource.data = historyEvents;
      }
    }  
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
