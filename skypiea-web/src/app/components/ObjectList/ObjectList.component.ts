import { Component, OnInit } from '@angular/core';
import { NonMedicalConnectedObject } from 'src/app/models/nonMedicalConnectedObject.model';
import { NonMedicalConnectedObjectService} from 'src/app/services/non-medical-connected-object.service';
import { Observable } from 'rxjs';
import { Router } from '@angular/router';

@Component({
  selector: 'app-ObjectList',
  templateUrl: './ObjectList.component.html',
  styleUrls: ['./ObjectList.component.scss']
})
export class ObjectListComponent implements OnInit {

  nonMedicalConnectedObjects: Observable<NonMedicalConnectedObject[]>
  
  constructor(private nonMedicalConnectedObjectService: NonMedicalConnectedObjectService, private router: Router) { }

  reloadData(){
    this.nonMedicalConnectedObjects = this.nonMedicalConnectedObjectService.findAll();
  }

  ngOnInit() {
    this.reloadData();
  }

}
