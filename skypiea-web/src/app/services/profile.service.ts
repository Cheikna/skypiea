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

  isCinephile(hours: any){
    return this.http.post(`${this.completeBackendServerUrl}/cinephile/${hours}`, { headers: this.headers });
  }

  isSmoker(smoker: any){
    return this.http.post(`${this.completeBackendServerUrl}/smoker/${smoker}`, { headers: this.headers });
  }

  isSedentary(hours: any){
    return this.http.post(`${this.completeBackendServerUrl}/sedentary/${hours}`, { headers: this.headers });
  }

  incomeValue(income: any){
    return this.http.post(`${this.completeBackendServerUrl}/income/${income}`, { headers: this.headers });
  }

  createJsonForProfile(hours: any): any{
    return this.http.get(`${this.completeBackendServerUrl}/createProfileJson/${hours}`, { headers: this.headers }).subscribe((value: any) => this.criteria.next(value));
  }
}
