import { Component, OnInit, Input } from '@angular/core';
import { statusInfo, Status } from 'src/app/enums/status.enum';
import { getNonMedicalObjectTypeName } from 'src/app/enums/nonMedicalObjectType.enum';
import { MatDialog } from '@angular/material/dialog';
import { ObjectMonitoringExtraInfoComponent } from 'src/app/dialogs/object-monitoring-extra-info/object-monitoring-extra-info.component';

@Component({
  selector: 'app-object-monitoring-info',
  templateUrl: './object-monitoring-info.component.html',
  styleUrls: ['./object-monitoring-info.component.scss']
})
export class ObjectMonitoringInfoComponent implements OnInit {

  @Input() nonMedicalConnectedObject: any;
  statusInfo = statusInfo;
  StatusEnum = Status;
  typeName = (type) => getNonMedicalObjectTypeName(type);

  constructor(private dialog: MatDialog) { }

  ngOnInit() {
  }
  
  extraObjectInformationDialog() {
    this.dialog.open(ObjectMonitoringExtraInfoComponent, {
      data: {
        nonMedicalConnectedObject: this.nonMedicalConnectedObject
      }
    });
  }

}
