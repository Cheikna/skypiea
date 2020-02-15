import { Injectable } from '@angular/core';
import { RestService } from './rest.service';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Shutter } from '../models/shutter.model';

@Injectable({
  providedIn: 'root'
})

export class NonMedicalConnectedObjectService extends RestService  {
 
  constructor(protected http: HttpClient) { 
    super("non-medical-objects", http);
  }

  saveNewObjectSetting(objectId:number, shutter:any): Observable<any> {
    return this.http.post(`${this.completeBackendServerUrl}/setting/${objectId}`, JSON.stringify(shutter), { headers: this.headers });
  }
  
  }
