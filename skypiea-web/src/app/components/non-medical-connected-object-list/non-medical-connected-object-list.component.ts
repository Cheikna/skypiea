import { Component, OnInit } from '@angular/core';
import { NonMedicalConnectedObject} from 'src/app/models/nonMedicalConnectedObject.model';
import { NonMedicalConnectedObjectService} from 'src/app/services/non-medical-connected-object.service';
import { AlarmClockDetailsComponent} from 'src/app/components/alarm-clock-details/alarm-clock-details.component'
import { Observable } from 'rxjs';
import { Router } from '@angular/router';

@Component({
  selector: 'app-non-medical-connected-object-list',
  templateUrl: './non-medical-connected-object-list.component.html',
  styleUrls: ['./non-medical-connected-object-list.component.scss']
})
export class NonMedicalConnectedObjectListComponent implements OnInit {

  nonMedicalConnectedObjects: Observable<NonMedicalConnectedObject[]>
  
  constructor(private nonMedicalConnectedObjectService: NonMedicalConnectedObjectService, private router: Router) { }

  reloadData(){
    this.nonMedicalConnectedObjects = this.nonMedicalConnectedObjectService.findAll();
  }

  ngOnInit() {
    this.reloadData();
  }

}
