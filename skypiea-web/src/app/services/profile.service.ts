import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { RestService } from './rest.service';
import { BehaviorSubject } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class ProfileService extends RestService {
  public criteria = new BehaviorSubject(null);

  constructor(protected http: HttpClient) { 
    super("profiles", http);
  }

  createJsonForProfile(hours: any): any{
    return this.http.get(`${this.completeBackendServerUrl}/createProfileJson/${hours}`, { headers: this.headers }).subscribe((value: any) => this.criteria.next(value));
  }

  getProfileCriteriaForClient(clientId: any){
    return this.http.get(`${this.completeBackendServerUrl}/client/${clientId}`, { headers: this.headers });
  }

  isSporty(criteria: any){
    return this.http.get(`${this.completeBackendServerUrl}/sporty/${criteria}`, { headers: this.headers });
  }
}
