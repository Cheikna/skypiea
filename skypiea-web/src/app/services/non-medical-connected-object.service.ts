import { Injectable } from '@angular/core';
import { RestService } from './rest.service';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Shutter } from '../models/shutter.model';
import { ObjectStatisticFilter } from '../statistics-objects/objectStatisticFilter.statistic';

@Injectable({
  providedIn: 'root'
})

export class NonMedicalConnectedObjectService extends RestService {

  constructor(protected http: HttpClient) {
    super("non-medical-objects", http);
  }

  saveNewObjectSetting(objectId: number, shutter: any): Observable<any> {
    return this.http.post(`${this.completeBackendServerUrl}/setting/${objectId}`, JSON.stringify(shutter), { headers: this.headers });
  }

  /**
   * A HTTP Post is used in order to pass a filter as an argument
   * @param objectFilter 
   */
  getStatistics(objectId: number, objectFilter: ObjectStatisticFilter) {
    return this.http.post(`${this.completeBackendServerUrl}/statistics/${objectId}`, JSON.stringify(objectFilter), { headers: this.headers });
  }

}
