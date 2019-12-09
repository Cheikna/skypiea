import { Component, OnInit } from '@angular/core';
import { Non_medical_connected_object } from 'src/app/models/non_medical_connected_object';


@Component({
  selector: 'app-ObjectList',
  templateUrl: './ObjectList.component.html',
  styleUrls: ['./ObjectList.component.scss']
})
export class ObjectListComponent implements OnInit {
  ObjectLists: Array<Non_medical_connected_object>;
  newObjectList: Non_medical_connected_object;

  

  ngOnInit() {
  }

}