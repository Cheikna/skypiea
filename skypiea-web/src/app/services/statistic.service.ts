import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { RestService } from './rest.service';
import { Observable, Timestamp } from 'rxjs';
import { FormControl } from '@angular/forms';
import { getNonMedicalObjectTypeName, NonMedicalObjectType } from 'src/app/enums/nonMedicalObjectType.enum';
import { AnalysisComponent } from '../components/analysis/analysis.component';

@Injectable({
  providedIn: 'root'
})
export class StatisticService extends RestService {

  dateFrom = new FormControl(new Date(2018, 0));
  dateTo = new FormControl(new Date());
  isDateFormValid: boolean;
  selectedObject: any;
  failureRateService: any;
  failureFactService: any;
  allOccurr: any;
  allFailures: any;
  macAddresses: any [];
  failures: any[];
  macAddress: string;

  constructor(protected http: HttpClient) {
    super("statistics", http);
  }

  getFailureRate(): Observable<any> {
    return this.http.get(`${this.completeBackendServerUrl}/failure-rate`, { headers: this.headers });
  }

  getStateRate(dateBeginStr : string, dateEndStr : string ): Observable<any> {
    return this.http.get(`${this.completeBackendServerUrl}/state-rate/${dateBeginStr}/${dateEndStr}`, { headers: this.headers });
  }

  getAllOccurr(dateBeginStr : string, dateEndStr : string ): Observable<any> {
    return this.http.get(`${this.completeBackendServerUrl}/all-occurr/${dateBeginStr}/${dateEndStr}`, { headers: this.headers });
  }

  findAll(): Observable<any> {
    return this.http.get(`${this.completeBackendServerUrl}/findAll/`, { headers: this.headers });
  }

  findAllByDate(dateBeginStr : string, dateEndStr : string): Observable<any> {
    return this.http.get(`${this.completeBackendServerUrl}/findAllByDate/${dateBeginStr}/${dateEndStr}`, { headers: this.headers });
  }

  findOccurPerObject(dateBeginStr : string, dateEndStr : string): Observable<any> {
    return this.http.get(`${this.completeBackendServerUrl}/findOccurPerObject/${dateBeginStr}/${dateEndStr}`, { headers: this.headers });
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

  

}
