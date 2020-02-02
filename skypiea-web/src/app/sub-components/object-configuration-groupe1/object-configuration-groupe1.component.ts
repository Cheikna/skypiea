import { Component, OnInit, Input } from '@angular/core';

@Component({
  selector: 'app-object-configuration-groupe1',
  templateUrl: './object-configuration-groupe1.component.html',
  styleUrls: ['./object-configuration-groupe1.component.scss']
})
export class ObjectConfigurationGroupe1Component implements OnInit {

@Input() nonMedicalConnectedObjects;

  constructor() { }

  ngOnInit() {
  }

}
