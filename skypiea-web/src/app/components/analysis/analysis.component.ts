import { Component, OnInit } from '@angular/core';
import { StatisticService } from 'src/app/services/statistic.service';
import { State } from 'src/app/enums/state.enum';
import { FormControl } from '@angular/forms';
import { NonMedicalObjectType } from 'src/app/enums/nonMedicalObjectType.enum';
import { Indicator } from 'src/app/enums/indicator.enum';
import { MatDialog } from '@angular/material/dialog';
import { THIS_EXPR } from '@angular/compiler/src/output/output_ast';
import { FooterComponent } from '../footer/footer.component';


interface InfoObject {
  nbOccurrence: number;
  cumulateTime: number;
}

@Component({
  selector: 'app-analysis',
  templateUrl: './analysis.component.html',
  styleUrls: ['./analysis.component.scss'],
  
})

export class AnalysisComponent implements OnInit {

  Indicator = Indicator;
  selectedIndicator: any[];
  failureRate: any;
  statics: any[];
  failureFact: any;
  useRate: any;
  occupancyRate: any;
  macAddress: String;
  macAddresses: string[];
  stateRate: Map<string, Number>;
  alarmClock: number = 0;
  binarySensor: number = 0;
  bulb: number = 0;
  doorSensor: number = 0;
  shutter: number = 0;
  smokeSensor: number = 0;
  sunshineSensor: number = 0;
  temperatureController: number = 0;
  alarmClockTotal: number = 1;
  binarySensorTotal: number = 1;
  bulbTotal: number = 1;
  doorSensorTotal: number = 1;
  shutterTotal: number = 1;
  smokeSensorTotal: number = 1;
  sunshineSensorTotal: number = 1;
  temperatureControllerTotal: number = 1;

  dateFrom = new FormControl(new Date(2018, 0));
  dateTo = new FormControl(new Date());
  isDateFormValid: boolean;
  nbOccur: number;
  all: String;
  occurrencesNumber: number;
  failures: any[];
  startDate: Date;
  endDate: Date;
  dateBeginStr: string;
  dateEndStr: string;
  monthFromStr: string;
  dayFromStr: string;
  monthToStr: string;
  dayToStr: string;
  byType: Map<string, Map<string, InfoObject>>;
  perMacAddress: Map<string, InfoObject>;



  

  constructor(private statisticService: StatisticService) {
    this.stateRate = new Map<State, number>();
    const currentDayAtMidnight: Date = new Date();
    this.isDateFormValid = true;
    currentDayAtMidnight.setHours(23, 59, 59);
    this.dateTo.setValue(currentDayAtMidnight);
    this.selectedIndicator=[this.failureRate, this.useRate, this.occupancyRate];
    
  }

  ngOnInit() {

    if(this.dateFrom.value.getMonth()<10) {
      this.monthFromStr="0"+this.dateFrom.value.getMonth();
    } else {
      this.monthFromStr=this.dateFrom.value.getMonth();
    }
    console.log(this.dateFrom.value.getMonth())
    console.log(this.monthFromStr);

    if(this.dateFrom.value.getDate()<10) {
      this.dayFromStr="0"+this.dateFrom.value.getDate();
    } else {
      this.dayFromStr=this.dateFrom.value.getDate();
    }
    console.log(this.dayFromStr);

    if(this.dateTo.value.getMonth()<10) {
      this.monthToStr="0"+this.dateFrom.value.getMonth();
    } else {
      this.monthToStr=this.dateFrom.value.getMonth();
    }
    console.log(this.monthToStr);

    if(this.dateTo.value.getDate()<10) {
      this.dayToStr="0"+this.dateTo.value.getDate();
    } else {
      this.dayToStr=this.dateTo.value.getDate();
    }
    console.log(this.dayToStr);

    this.statisticService.getFailureRate().subscribe((data) => {
      this.failureRate = data;
    });


   /*this.statisticService.getAllOccurr(this.dateBeginStr, this.dateEndStr).subscribe((data) => {
      this.occurrencesNumber = data;
      console.log("ICIIIII COUCOU C LAAAA");
      console.log(this.occurrencesNumber);
    });*/

    this.statisticService.findAll().subscribe((data) => {
      this.statics = data;
    });


    this.statisticService.findAllByDate(this.dateBeginStr, this.dateEndStr).subscribe((data) => {
       this.failures = data;
    });
    

    

    // Enable date checking
    this.dateFrom.valueChanges.subscribe((value: Date) => this.checkDates());
    this.dateTo.valueChanges.subscribe((value: Date) => this.checkDates());

  }



  checkDates() {
    const dateFromValue: Date = this.dateFrom.value;
    console.log(this.dateFrom.value);
    const dateToValue: Date = this.dateTo.value;
    console.log(this.dateTo.value);
    if (dateFromValue && dateToValue) {
      this.isDateFormValid = (dateFromValue.getTime() <= dateToValue.getTime());
    } else {
      this.isDateFormValid = true;
    }
  }


  getAllOccur(dateFrom, dateTo){
    if(this.dateFrom.value.getMonth()<10) {
      this.monthFromStr="0"+this.dateFrom.value.getMonth();
    } else {
      this.monthFromStr=this.dateFrom.value.getMonth();
    }
    console.log(this.dateFrom.value.getMonth())
    console.log(this.monthFromStr);

    if(this.dateFrom.value.getDate()<10) {
      this.dayFromStr="0"+this.dateFrom.value.getDate();
    } else {
      this.dayFromStr=this.dateFrom.value.getDate();
    }
    console.log(this.dayFromStr);

    if(this.dateTo.value.getMonth()<10) {
      this.monthToStr="0"+this.dateFrom.value.getMonth();
    } else {
      this.monthToStr=this.dateFrom.value.getMonth();
    }
    console.log(this.monthToStr);

    if(this.dateTo.value.getDate()<10) {
      this.dayToStr="0"+this.dateTo.value.getDate();
    } else {
      this.dayToStr=this.dateTo.value.getDate();
    }
    console.log(this.dayToStr);

    this.dateBeginStr=""+this.dateFrom.value.getFullYear()+"-"+this.monthFromStr+"-"+this.dayFromStr+" "+this.dateFrom.value.getSeconds()+":"+this.dateFrom.value.getMinutes()+":"+this.dateFrom.value.getHours();
    console.log(this.dateBeginStr);
    this.dateEndStr=""+this.dateTo.value.getFullYear()+"-"+this.monthToStr+"-"+this.dayToStr+" "+this.dateTo.value.getSeconds()+":"+this.dateTo.value.getMinutes()+":"+this.dateTo.value.getHours();
    console.log(this.dateEndStr);
    this.statisticService.getAllOccurr(this.dateBeginStr, this.dateEndStr).subscribe((data) => {
      this.occurrencesNumber = data;
    });
  }

  findAllByDate(dateFrom, dateTo) {
    if(this.dateFrom.value.getMonth()<10) {
      this.monthFromStr="0"+this.dateFrom.value.getMonth();
    } else {
      this.monthFromStr=this.dateFrom.value.getMonth();
    }
    console.log(this.dateFrom.value.getMonth())
    console.log(this.monthFromStr);

    if(this.dateFrom.value.getDate()<10) {
      this.dayFromStr="0"+this.dateFrom.value.getDate();
    } else {
      this.dayFromStr=this.dateFrom.value.getDate();
    }
    console.log(this.dayFromStr);

    if(this.dateTo.value.getMonth()<10) {
      this.monthToStr="0"+this.dateFrom.value.getMonth();
    } else {
      this.monthToStr=this.dateFrom.value.getMonth();
    }
    console.log(this.monthToStr);

    if(this.dateTo.value.getDate()<10) {
      this.dayToStr="0"+this.dateTo.value.getDate();
    } else {
      this.dayToStr=this.dateTo.value.getDate();
    }
    console.log(this.dayToStr);

    this.dateBeginStr=""+this.dateFrom.value.getFullYear()+"-"+this.monthFromStr+"-"+this.dayFromStr+" "+this.dateFrom.value.getSeconds()+":"+this.dateFrom.value.getMinutes()+":"+this.dateFrom.value.getHours();
    console.log(this.dateBeginStr);
    this.dateEndStr=""+this.dateTo.value.getFullYear()+"-"+this.monthToStr+"-"+this.dayToStr+" "+this.dateTo.value.getSeconds()+":"+this.dateTo.value.getMinutes()+":"+this.dateTo.value.getHours();
    console.log(this.dateEndStr);
    this.statisticService.findAllByDate(this.dateBeginStr, this.dateEndStr).subscribe((data) => {
      this.failures = data;
      console.log(this.failures);
    });
  }

findOccurPerObject(dateFrom, dateTo) {
  if(this.dateFrom.value.getMonth()<10) {
    this.monthFromStr="0"+this.dateFrom.value.getMonth();
  } else {
    this.monthFromStr=this.dateFrom.value.getMonth();
  }
  console.log(this.dateFrom.value.getMonth())
  console.log(this.monthFromStr);

  if(this.dateFrom.value.getDate()<10) {
    this.dayFromStr="0"+this.dateFrom.value.getDate();
  } else {
    this.dayFromStr=this.dateFrom.value.getDate();
  }
  console.log(this.dayFromStr);

  if(this.dateTo.value.getMonth()<10) {
    this.monthToStr="0"+this.dateFrom.value.getMonth();
  } else {
    this.monthToStr=this.dateFrom.value.getMonth();
  }
  console.log(this.monthToStr);

  if(this.dateTo.value.getDate()<10) {
    this.dayToStr="0"+this.dateTo.value.getDate();
  } else {
    this.dayToStr=this.dateTo.value.getDate();
  }
  console.log(this.dayToStr);

  this.dateBeginStr=""+this.dateFrom.value.getFullYear()+"-"+this.monthFromStr+"-"+this.dayFromStr+" "+this.dateFrom.value.getSeconds()+":"+this.dateFrom.value.getMinutes()+":"+this.dateFrom.value.getHours();
  console.log(this.dateBeginStr);
  this.dateEndStr=""+this.dateTo.value.getFullYear()+"-"+this.monthToStr+"-"+this.dayToStr+" "+this.dateTo.value.getSeconds()+":"+this.dateTo.value.getMinutes()+":"+this.dateTo.value.getHours();
  console.log(this.dateEndStr);

  this.statisticService.findAllByDate(this.dateBeginStr, this.dateEndStr).subscribe((data) => {
     this.byType = new Map();
    i: Number;
    for (let obj of data) {
      this.perMacAddress= this.byType.get(obj.objectType);
      if(this.perMacAddress===undefined){
        this.perMacAddress = new Map();
        this.byType.set(obj.objectType, this.perMacAddress);
      }
      let infoObject: InfoObject = this.perMacAddress.get(obj.macAddress);
      if (infoObject === undefined) {
        infoObject = {
          nbOccurrence : 0,
          cumulateTime : 0
        }
       this.perMacAddress.set(obj.macAddress, infoObject);
      }
      let dateStart = new Date(obj.startDate);
      let dateEnd = new Date(obj.endDate);
      
      infoObject.nbOccurrence +=1;
      infoObject.cumulateTime = dateEnd.getTime()-dateStart.getTime()/1000;

    }

  });

}

getStateRate() {
  this.statisticService.getStateRate(this.dateFrom.value, this.dateTo.value).subscribe((data) => {
    const t: Map<string, number> = data.brokenTimeByObjectType;
    const total: Map<string, number> = data.numberByType;
    console.log(t);
    for (let key of Object.keys(t)) {
      console.log(t[key]);
      if (key == NonMedicalObjectType.ALARM_CLOCK) {
        this.alarmClock = t[key];
      } else if (key == NonMedicalObjectType.BINARY_SENSOR) {
        this.binarySensor = t[key];
      } else if (key == NonMedicalObjectType.BULB) {
        this.bulb = t[key];
      } else if (key == NonMedicalObjectType.DOOR_SENSOR) {
        this.doorSensor = t[key];
      } else if (key == NonMedicalObjectType.SHUTTER) {
        this.shutter = t[key];
      } else if (key == NonMedicalObjectType.SMOKE_SENSOR) {
        this.smokeSensor = t[key];
      } else if (key == NonMedicalObjectType.SUNSHINE_SENSOR) {
        this.sunshineSensor = t[key];
      } else if (key == NonMedicalObjectType.TEMPERATURE_CONTROLLER) {
        this.temperatureController = t[key];
      }

    }

    for (let key of Object.keys(total)) {
      console.log(t[key]);
      if (key == NonMedicalObjectType.ALARM_CLOCK) {
        this.alarmClockTotal = t[key];
      } else if (key == NonMedicalObjectType.BINARY_SENSOR) {
        this.binarySensorTotal = t[key];
      } else if (key == NonMedicalObjectType.BULB) {
        this.bulbTotal = t[key];
      } else if (key == NonMedicalObjectType.DOOR_SENSOR) {
        this.doorSensorTotal = t[key];
      } else if (key == NonMedicalObjectType.SHUTTER) {
        this.shutterTotal = t[key];
      } else if (key == NonMedicalObjectType.SMOKE_SENSOR) {
        this.smokeSensorTotal = t[key];
      } else if (key == NonMedicalObjectType.SUNSHINE_SENSOR) {
        this.sunshineSensorTotal = t[key]; 
      } else if (key == NonMedicalObjectType.TEMPERATURE_CONTROLLER) {
        this.temperatureControllerTotal = t[key];
      }

    }

  });
}

}