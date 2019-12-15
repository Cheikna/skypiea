import { Component, OnInit } from '@angular/core';
import {AlarmClock} from 'src/app/models/alarmClock.model';
import {AlarmClockService} from 'src/app/services/alarm-clock.service';
//import {NonMedicalConnectedObjectListComponent} from 'src/app/components/non-medical-connected-object-list';
import { from } from 'rxjs';
import { ActivatedRoute, Router } from '@angular/router';

@Component({
  selector: 'app-alarm-clock-details',
  templateUrl: './alarm-clock-details.component.html',
  styleUrls: ['./alarm-clock-details.component.scss']
})
export class AlarmClockDetailsComponent implements OnInit {

  id : number; 
  alarmClock: AlarmClock; 

  constructor(private route: ActivatedRoute, private router: Router, private alarmClockService: AlarmClockService) { }

  ngOnInit() {
    this.alarmClock = new AlarmClock();

    this.id=this.route.snapshot.params['id'];

  
    this.router.navigate(['nonMedicalConnectedObject']);
  }

}
