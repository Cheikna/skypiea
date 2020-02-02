import { Injectable, Inject } from '@angular/core';
import { RestService } from './rest.service';
import { HttpClient } from '@angular/common/http';
import { Logon } from '../models/logon.model';
import { WebStorageService } from '../util/web-storage.service';
import { storageKey } from '../util/storageKey.util';

@Injectable({
  providedIn: 'root'
})
export class AuthenticationService extends RestService {

  constructor(protected http: HttpClient, protected webStorageService: WebStorageService) { 
    super("users", http);
  }

  login(logon: Logon){
    return this.http.post(`${this.completeBackendServerUrl}/authenticate`, JSON.stringify(logon), { headers: this.headers });
  }

  isAuthenticated(): boolean {
    return (this.webStorageService.getSessionAttribute(storageKey.USER_INFO.name));
  }

  saveSuccessfullAuthentication(user: any){
    this.webStorageService.setSessionAttribute(storageKey.USER_INFO.name, user);
  }
}
