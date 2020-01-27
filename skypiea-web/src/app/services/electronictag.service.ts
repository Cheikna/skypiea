import { Injectable } from '@angular/core';
import { RestService } from './rest.service';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class ElectronicTagService extends RestService {

  constructor(protected http: HttpClient) { 
    super("electronictag", http);
  }

  getResidentHistoryMoving(residentId: number){
    return this.http.get(`${this.completeBackendServerUrl}/residenthistory/${residentId}`, { headers: this.headers });
  }
  
}
