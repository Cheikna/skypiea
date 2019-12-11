import { Component, OnInit } from '@angular/core';
import { NonMedicalConnectedObject } from 'src/app/models/nonMedicalConnectedObject.model';


@Component({
  selector: 'app-ObjectList',
  templateUrl: './ObjectList.component.html',
  styleUrls: ['./ObjectList.component.scss']
})
export class ObjectListComponent implements OnInit {
  ObjectLists: Array<NonMedicalConnectedObject>;
  newObjectList: NonMedicalConnectedObject;

  

  ngOnInit() {
  }

}