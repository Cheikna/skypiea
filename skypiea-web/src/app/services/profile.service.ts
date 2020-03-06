import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { RestService } from './rest.service';

@Injectable({
  providedIn: 'root'
})
export class ProfileService extends RestService {

  constructor(protected http: HttpClient) { 
    super("profiles", http);
  }

  isCinephile(hours: any){
    return this.http.get(`${this.completeBackendServerUrl}/${hours}`, { headers: this.headers });
  }

  isSmoker(smoker: any){
    return this.http.get(`${this.completeBackendServerUrl}/${smoker}`, { headers: this.headers });
  }

  createJsonForProfile(): any{
    return this.http.post(`${this.completeBackendServerUrl}/createProfileJson`, { headers: this.headers });
  }
}
