import { Component, OnInit } from '@angular/core';
import { StatisticService } from 'src/app/services/statistic.service';
import { State } from 'src/app/enums/state.enum';
import { FormControl } from '@angular/forms';
import { NonMedicalObjectType } from 'src/app/enums/nonMedicalObjectType.enum';

@Component({
  selector: 'app-analysis',
  templateUrl: './analysis.component.html',
  styleUrls: ['./analysis.component.scss']
})
export class AnalysisComponent implements OnInit {

  failureRate : any; 
  dateBeginStr = new FormControl(new Date(2018, 0));
  dateEndStr = new FormControl(new Date());
  stateRate : Map<string, Number>;
  alarmClock: number = 0;
  binarySensor: number = 0;
  bulb: number = 0;
  doorSensor: number = 0;
  shutter: number = 0;
  smokeSensor: number = 0;
  sunshineSensor: number = 0;
  temperatureController: number = 0;
  alarmClockTotal : number = 1;
  binarySensorTotal : number = 1;
  bulbTotal : number = 1;
  doorSensorTotal : number = 1;
  shutterTotal : number = 1;
  smokeSensorTotal : number = 1;
  sunshineSensorTotal : number = 1;
  temperatureControllerTotal : number = 1;
  
  constructor(private statisticService : StatisticService) { 
    this.stateRate = new Map<State, number>();
  }

  ngOnInit() {
    this.statisticService.getFailureRate().subscribe((data)=>{
      this.failureRate=data;
    });
  }

  getStateRate() {
    this.statisticService.getStateRate(this.dateBeginStr.value, this.dateEndStr.value).subscribe((data) => {
      const t: Map<string, number> = data.brokenTimeByObjectType;
      const total: Map<string, number> = data.numberByType;
      console.log(t);
      for(let key of Object.keys(t)){
        console.log(t[key]);
        if(key == NonMedicalObjectType.ALARM_CLOCK){
          this.alarmClock = t[key];
        } else if(key == NonMedicalObjectType.BINARY_SENSOR){
          this.binarySensor = t[key];
        } else if(key == NonMedicalObjectType.BULB){
          this.bulb = t[key];
        } else if(key == NonMedicalObjectType.DOOR_SENSOR){
          this.doorSensor = t[key];
        } else if(key == NonMedicalObjectType.SHUTTER){
          this.shutter = t[key];
        } else if(key == NonMedicalObjectType.SMOKE_SENSOR){
          this.smokeSensor = t[key];
        } else if(key == NonMedicalObjectType.SUNSHINE_SENSOR){
          this.sunshineSensor = t[key];
        } else if(key == NonMedicalObjectType.TEMPERATURE_CONTROLLER){
          this.temperatureController = t[key];
        } 
        
      }

      for(let key of Object.keys(total)){
        console.log(t[key]);
        if(key == NonMedicalObjectType.ALARM_CLOCK){
          this.alarmClockTotal = t[key];
        } else if(key == NonMedicalObjectType.BINARY_SENSOR){
          this.binarySensorTotal = t[key];
        } else if(key == NonMedicalObjectType.BULB){
          this.bulbTotal = t[key];
        } else if(key == NonMedicalObjectType.DOOR_SENSOR){
          this.doorSensorTotal = t[key];
        } else if(key == NonMedicalObjectType.SHUTTER){
          this.shutterTotal = t[key];
        } else if(key == NonMedicalObjectType.SMOKE_SENSOR){
          this.smokeSensorTotal = t[key];
        } else if(key == NonMedicalObjectType.SUNSHINE_SENSOR){
          this.sunshineSensorTotal = t[key];
        } else if(key == NonMedicalObjectType.TEMPERATURE_CONTROLLER){
          this.temperatureControllerTotal = t[key];
        } 
        
      }
    });
  }

}
