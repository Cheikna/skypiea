import { Component, OnInit } from '@angular/core';
import { StatisticService } from 'src/app/services/statistic.service';

@Component({
  selector: 'app-analysis',
  templateUrl: './analysis.component.html',
  styleUrls: ['./analysis.component.scss']
})
export class AnalysisComponent implements OnInit {

  failureRate : any; 
  constructor(private statisticService : StatisticService) { 

  }

  ngOnInit() {
    this.statisticService.getFailureRate().subscribe((data)=>{
      this.failureRate=data;
    });
  }

}
