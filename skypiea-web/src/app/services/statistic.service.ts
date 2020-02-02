import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { RestService } from './rest.service';
import { FailureRate } from '../statistics/failureRate.statistic';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class StatisticService extends RestService{

  constructor(protected http: HttpClient) { 
    super("statistics", http);
  }

getFailureRate():Observable<any>{
  return this.http.get(`${this.completeBackendServerUrl}/failure-rate`, { headers: this.headers });

}

}
