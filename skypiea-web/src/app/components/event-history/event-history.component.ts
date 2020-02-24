import { Component, OnInit } from '@angular/core';
import { FormControl } from '@angular/forms';
import { Room } from 'src/app/models/room.model';
import { RoomService } from 'src/app/services/room.service';
import { getNonMedicalObjectTypeName, NonMedicalObjectType } from 'src/app/enums/nonMedicalObjectType.enum';
import { nonMedicalObjectIcons } from 'src/app/util/nonMedicalObjectIcons.util';
import { ObjectStatisticFilter } from 'src/app/statistics-objects/objectStatisticFilter.statistic';
import { NonMedicalConnectedObjectService } from 'src/app/services/non-medical-connected-object.service';
import { StatisticData } from 'src/app/statistics-objects/statisticData.statistic';
import { Color } from 'ng2-charts';
import { ChartOptions, RadialChartOptions } from 'chart.js';
import { ToastService } from 'src/app/util/toast.service';
import { ToastType } from 'src/app/enums/toastType.enum';
import { MatDialog } from '@angular/material/dialog';
import { ObjectSettingsEventsHistoryComponent } from 'src/app/dialogs/object-settings-events-history/object-settings-events-history.component';

@Component({
  selector: 'app-event-history',
  templateUrl: './event-history.component.html',
  styleUrls: ['./event-history.component.scss']
})
export class EventHistoryComponent implements OnInit {

  NonMedicalObjectType = NonMedicalObjectType;

  barChartOptions: ChartOptions = {
    responsive: true,
    scales: {
      xAxes: [{
        ticks: {
          beginAtZero: true
        }
      }],
      yAxes: [{
        ticks: {
          beginAtZero: true
        }
      }]

    }
  };
  radarChartOptions: RadialChartOptions = {
    responsive: true,
    scale: {
      ticks: {
        beginAtZero: true,
        max: 5,
        min: 0,
        stepSize: 1
      }
    }
  };

  chartColors1: Color[] = [{ backgroundColor: ["green", "red", "orange", "yellow", "pink"] }];
  chartColors2: Color[] = [{ backgroundColor: ["rgb(255,161,181)", "cyan", "orange", "yellow", "pink"] }];
  chartColors3: Color[] = [{ backgroundColor: ["orange", "orange", "orange", "orange", "orange"] }];

  selectedObjectStatistics: StatisticData;

  dateFrom = new FormControl(new Date(2018, 0));
  dateTo = new FormControl(new Date());
  isDateFormValid: boolean;
  selectedRoom: Room;
  selectedNonMedicalConnectedObject: any;
  currentObjectType: NonMedicalObjectType;
  selectedNonMedicalConnectedObjectTypes = new FormControl();

  objectStatisticFilter: ObjectStatisticFilter;

  nonMedicalConnectedObjectsPerRoom: Map<Room, any[]>;
  allNonMedicalConnectedObjects: any[];
  nonMedicalObjectTypes: any[];

  constructor(private roomService: RoomService, private nonMedicalConnectedObjectService: NonMedicalConnectedObjectService,
    private toastService: ToastService, private dialog: MatDialog) {
    const currentDayAtMidnight: Date = new Date();
    this.isDateFormValid = true;
    currentDayAtMidnight.setHours(23, 59, 59);
    this.dateTo.setValue(currentDayAtMidnight);

    this.objectStatisticFilter = new ObjectStatisticFilter();
    this.selectedObjectStatistics = new StatisticData();
    this.allNonMedicalConnectedObjects = [];
    this.nonMedicalObjectTypes = [];
    this.nonMedicalConnectedObjectsPerRoom = new Map<Room, any[]>();
    const entries: any[] = Object.entries(nonMedicalObjectIcons);
    entries.forEach((entry) => {
      this.nonMedicalObjectTypes.push(entry[1]);
    });
  }

  ngOnInit() {
    this.roomService.findAll().subscribe((rooms: Array<Room>) => {
      rooms.forEach((room) => {
        const roomObjects: any[] = room.nonMedicalConnectedObjects;
        this.nonMedicalConnectedObjectsPerRoom.set(room, roomObjects);
        this.allNonMedicalConnectedObjects = this.allNonMedicalConnectedObjects.concat(roomObjects);
      });
    });

    // Enable date checking
    this.dateFrom.valueChanges.subscribe((value: Date) => this.checkDates());
    this.dateTo.valueChanges.subscribe((value: Date) => this.checkDates());
  }

  checkDates(){
    const dateFromValue: Date = this.dateFrom.value;
    const dateToValue: Date = this.dateTo.value;
    if(dateFromValue && dateToValue){
      this.isDateFormValid = (dateFromValue.getTime() <= dateToValue.getTime());
    } else {
      this.isDateFormValid = true;
    }

  }

  getStatistics() {
    this.selectedObjectStatistics = new StatisticData();
    this.currentObjectType = this.selectedNonMedicalConnectedObject.nonMedicalObjectType;
    this.objectStatisticFilter.dateFrom = this.dateFrom.value;
    this.objectStatisticFilter.dateTo = this.dateTo.value;
    this.nonMedicalConnectedObjectService.getStatistics(this.selectedNonMedicalConnectedObject.id, this.objectStatisticFilter).subscribe((data: any) => {
      if (data) {
        this.selectedObjectStatistics.setGeneralData(data);
        this.selectedObjectStatistics.setSpecificData(this.currentObjectType, data);
        if (data.numberOfStatusChanges == 0) {
          this.toastService.displayToast(ToastType.WARNING, "Lack of data", true, "There are not enough data to show the object activity !");
        }
      } else {
        this.toastService.displayToast(ToastType.ERROR, "Lack of data", true, "There activity data of the object are missing !");
      }
    });
  }

  openObjectSettingsHistoryDialog() {
    const dialogRef = this.dialog.open(ObjectSettingsEventsHistoryComponent, {
      data: { nonMedicalConnectedObject: this.selectedNonMedicalConnectedObject }
    });
    //dialogRef.componentInstance.nonMedicalConnectedObject = this.selectedNonMedicalConnectedObject;
  }

  formatRoomOptionDisplay(room: Room): string {
    return `Room n°${room.doorNumber} - ${room.resident.lastName} ${room.resident.firstName}`;
  }

  formatObjectOptionDisplay(object: any) {
    return `${getNonMedicalObjectTypeName(object.nonMedicalObjectType)} - Mac Address ${object.macAddress}`;
  }

  getSelectedRoomAssociatedObjects(): any[] {
    let listToDisplay: any[] = [];
    if (this.selectedRoom) {
      listToDisplay = this.nonMedicalConnectedObjectsPerRoom.get(this.selectedRoom);
    } else {
      listToDisplay = this.allNonMedicalConnectedObjects;
    }

    if (listToDisplay) {
      const selectedTypes: NonMedicalObjectType[] = this.selectedNonMedicalConnectedObjectTypes.value;
      if (selectedTypes && selectedTypes.length > 0) {
        listToDisplay = listToDisplay.filter((obj) => selectedTypes.includes(obj.nonMedicalObjectType));
      }
    }

    return listToDisplay;
  }

}
