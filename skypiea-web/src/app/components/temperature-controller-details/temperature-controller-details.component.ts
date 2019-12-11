import { Component, OnInit } from '@angular/core';
import {TemperatureController} from 'src/app/models/TemperatureController.model';
import {TemperatureControllerService} from 'src/app/services/temperature-controller.service';
//import {NonMedicalConnectedObjectListComponent} from 'src/app/components/non-medical-connected-object-list';
import { from } from 'rxjs';
import { ActivatedRoute, Router } from '@angular/router';

@Component({
  selector: 'app-temperture-controller-details',
  templateUrl: './temperature-controller-details.component.html',
  styleUrls: ['./temperature-controller-details.component.scss']
})
export class TemperatureControllerDetailsComponent implements OnInit {

  id : number; 
  temperatureController: TemperatureController; 

  constructor(private route: ActivatedRoute, private router: Router, private temperatureControllerService: TemperatureControllerService) { }

  ngOnInit() {
    this.temperatureController = new TemperatureController();

    this.id=this.route.snapshot.params['id'];

  
    this.router.navigate(['nonMedicalConnectedObject']);
  }

}
