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

  getProfileCriteriaForClient(clientId: number){
    return this.http.get(`${this.completeBackendServerUrl}/client/${clientId}`, { headers: this.headers });
  }

  isSporty(criteria: String){
    return this.http.get(`${this.completeBackendServerUrl}/sporty/${criteria}`, { headers: this.headers });
  }

  isSedentary(criteria: any){
    return this.http.get(`${this.completeBackendServerUrl}/sedentary/${criteria}`, { headers: this.headers });
  }

  isCinephile(criteria: any){
    return this.http.get(`${this.completeBackendServerUrl}/cinephile/${criteria}`, { responseType:'text', headers: this.headers });
  }

  isSmoker(criteria: any){
    return this.http.get(`${this.completeBackendServerUrl}/smoker/${criteria}`, { headers: this.headers });
  }

  getIncome(criteria: string){
    return this.http.get(`${this.completeBackendServerUrl}/income/${criteria}`, { responseType:'text', headers: this.headers });
  }

  isCooker(criteria: any){
    return this.http.get(`${this.completeBackendServerUrl}/cooker/${criteria}`, { responseType:'text', headers: this.headers });
  }
}
