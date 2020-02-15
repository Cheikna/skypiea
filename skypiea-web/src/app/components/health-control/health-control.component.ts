import { Component, OnInit } from '@angular/core';
import {HealthControlService} from "../../services/health-control.service";
import {MedicalConnectedObject} from "../../models/medicalConnectedObject.model";

@Component({
  selector: 'app-health-control',
  templateUrl: './health-control.component.html',
  styleUrls: ['./health-control.component.scss']
})
export class HealthControlComponent implements OnInit {
  medicalConnectedObjects: Array<MedicalConnectedObject>;

  constructor(private healthControlService : HealthControlService) {
    this.medicalConnectedObjects = new Array<MedicalConnectedObject>();
  }

  ngOnInit() {
    this.healthControlService.findAll().subscribe((data) =>{
      this.medicalConnectedObjects = data;
      console.log(JSON.stringify(data));
    });
  }

}
