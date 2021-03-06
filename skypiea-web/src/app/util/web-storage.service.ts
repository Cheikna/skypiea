import { Inject, Injectable } from '@angular/core';
import { SESSION_STORAGE, LOCAL_STORAGE, StorageService } from 'ngx-webstorage-service';
import { UserType } from '../enums/userType.enum';
import { storageKey } from './storageKey.util';

@Injectable({
  providedIn: 'root'
})
export class WebStorageService {

  temporaryData: any;

  /**
   * 
   * @param sessionStorage : 
   * to store element only in the session. Consequetly, all of the things saved in this storage will disappeared once, the user closes the web page
   * @param localStorage :
   * to store element permenently in the cookies so that we can reuse it even if the user closes the web page
   */
  constructor(@Inject(SESSION_STORAGE) private sessionStorage: StorageService, 
  @Inject(LOCAL_STORAGE) private localStorage: StorageService) { }

  setSessionAttribute = (key: string, value: any) => this.sessionStorage.set(key, value);
  getSessionAttribute = (key: string) => this.sessionStorage.get(key);
  removeSessionAttribute = (key: string) => this.sessionStorage.remove(key);

  setLocalAttribute = (key: string, value: any) => this.localStorage.set(key, value);
  getLocalAttribute = (key: string) => this.localStorage.get(key);
  removeLocalAttribute = (key: string) => this.localStorage.remove(key);  
  

  getConnectedUserType(){
    const userInfo = this.getSessionAttribute(storageKey.USER_INFO.name);
    if(userInfo){
      return userInfo.userType;
    }
    return UserType.NOT_CONNECTED;
  }
  
}
