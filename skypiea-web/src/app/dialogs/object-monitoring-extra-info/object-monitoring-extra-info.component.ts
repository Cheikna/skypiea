import { Component, OnInit, Inject } from '@angular/core';
import { MAT_DIALOG_DATA } from '@angular/material/dialog';
import { DateUtil } from 'src/app/util/date.util';
import { stateInfo } from 'src/app/enums/state.enum';

@Component({
  selector: 'app-object-monitoring-extra-info',
  templateUrl: './object-monitoring-extra-info.component.html',
  styleUrls: ['./object-monitoring-extra-info.component.scss']
})
export class ObjectMonitoringExtraInfoComponent implements OnInit {

  nonMedicalConnectedObject: any;
  timeDifference;
  stateInfo = stateInfo;

  constructor(@Inject(MAT_DIALOG_DATA) public data: any) { }

  ngOnInit() {
    this.nonMedicalConnectedObject = this.data.nonMedicalConnectedObject;
    this.timeDifference = DateUtil.getTimeDifferenceInString(this.nonMedicalConnectedObject.lastParameterModification);
  }

}
