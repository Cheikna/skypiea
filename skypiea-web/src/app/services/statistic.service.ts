import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { RestService } from './rest.service';
import { Observable, Timestamp } from 'rxjs';
import { FormControl } from '@angular/forms';

@Injectable({
  providedIn: 'root'
})
export class StatisticService extends RestService {

  dateFrom = new FormControl(new Date(2018, 0));
  dateTo = new FormControl(new Date());
  isDateFormValid: boolean;
  failureRateService: any;
  failureFactService: any;

  constructor(protected http: HttpClient) {
    super("statistics", http);
  }

  getFailureRate(): Observable<any> {
    return this.http.get(`${this.completeBackendServerUrl}/failure-rate`, { headers: this.headers });
  }

  getStateRate(dateBeginInString : string, dateEndInString : string ): Observable<any> {
    return this.http.get(`${this.completeBackendServerUrl}/state-rate/${dateBeginInString}/${dateEndInString}`, { headers: this.headers });
  }

  getAllOccurr(dateBeginStr : String, dateEndStr : String ): Observable<any> {
    return this.http.get(`${this.completeBackendServerUrl}/all-occurr/${dateBeginStr}/${dateEndStr}`, { headers: this.headers });
  }

  getOccurr(dateBeginStr : String, dateEndStr : String, macAddress : String ): Observable<any> {
    return this.http.get(`${this.completeBackendServerUrl}/occurr/${dateBeginStr}/${dateEndStr}/${macAddress}`, { headers: this.headers });
  }


  checkDates(){
    const dateFromValue: Date = this.dateFrom.value;
    const dateToValue: Date = this.dateTo.value;
    if(dateFromValue && dateToValue){
      this.isDateFormValid = (dateFromValue.getTime() <= dateToValue.getTime());
    } else {
      this.isDateFormValid = true;
    }

  }

  /*getIndicator(): string {
   return this.http.get(`${this.completeBackendServerUrl}/indicator/${this.getIndicator});
  }*/

}
