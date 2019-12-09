import { Injectable, Inject } from '@angular/core';
import { RestService } from './rest.service';
import { HttpClient } from '@angular/common/http';
import { Logon } from '../models/logon.model';
import { WebStorageService } from '../util/web-storage.service';

@Injectable({
  providedIn: 'root'
})
export class AuthenticationService extends RestService {

  private readonly userInfoStr: string = "USER_INFO";
  private readonly isAuthenticatedStr: string = "IS_AUTHENTICATED";

  constructor(protected http: HttpClient, protected webStorageService: WebStorageService) { 
    super("users", http);
  }

  login(logon: Logon){
    return this.http.post(`${this.completeBackendServerUrl}/authenticate`, JSON.stringify(logon), { headers: this.headers });
  }

  logout(){
    this.webStorageService.removeLocalAttribute(this.isAuthenticatedStr);
    this.webStorageService.removeLocalAttribute(this.userInfoStr);
  }

  isAuthenticated(): boolean {
    return (this.webStorageService.getLocalAttribute(this.isAuthenticatedStr));
  }

  saveSuccessfullAuthentication(user: any){
    this.webStorageService.setLocalAttribute(this.isAuthenticatedStr, true);
    this.webStorageService.setLocalAttribute(this.userInfoStr, user);
  }
}
