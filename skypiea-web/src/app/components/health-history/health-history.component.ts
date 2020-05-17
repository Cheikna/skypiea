import {Component, OnInit, ViewChild} from '@angular/core';
import {MedicalConnectedObject} from "../../models/medicalConnectedObject.model";
import {MedicalConnectedObjectService} from "../../services/medical-connected-object.service";
import {MatTableDataSource} from "@angular/material/table";
import {Resident} from "../../models/resident.model";
import {HealthControlHistory} from "../../models/healthControlHistory.model";
import {MatPaginator} from "@angular/material/paginator";

@Component({
  selector: 'app-health-history',
  templateUrl: './health-history.component.html',
  styleUrls: ['./health-history.component.scss']
})
export class HealthHistoryComponent implements OnInit {
  medicalConnectedObjects: Array<MedicalConnectedObject>;
  healthControlHistories: Array<HealthControlHistory>[];
  dataSource : MatTableDataSource<HealthControlHistory[]>;
  displayedColumns: string[] = ['medicalObjectType','date', 'value', 'extraValue'];
  @ViewChild(MatPaginator, {static: true}) paginator: MatPaginator;

  constructor(private medicalConnectedObjectService: MedicalConnectedObjectService) {
    this.medicalConnectedObjects = new Array<MedicalConnectedObject>();
  }

  ngOnInit() {
   /* this.medicalConnectedObjectService.findAll().subscribe(data =>{
      this.medicalConnectedObjects = data;
      this.healthControlHistories = this.medicalConnectedObjects.map(function (medicalConnectedObject) {
        return medicalConnectedObject.healthControlHistories;
      })
      this.dataSource = new MatTableDataSource<HealthControlHistory[]>(this.healthControlHistories);
    });
    this.dataSource.paginator = this.paginator;*/
  }

}
