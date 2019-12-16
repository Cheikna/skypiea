import { Injectable } from '@angular/core';
import { CanActivate, ActivatedRouteSnapshot, RouterStateSnapshot, UrlTree, Router } from '@angular/router';
import { Observable } from 'rxjs';
import { WebStorageService } from '../util/web-storage.service';
import { UserType } from '../enums/userType.enum';

@Injectable({
  providedIn: 'root'
})
export class AuthenticationGuard implements CanActivate {

  constructor(private router: Router, private webStorageService: WebStorageService) { }

  canActivate(
    next: ActivatedRouteSnapshot,
    state: RouterStateSnapshot): Observable<boolean | UrlTree> | Promise<boolean | UrlTree> | boolean | UrlTree {
    const userTypeFromStorage: string = this.webStorageService.getConnectedUserType();
    const neededType: string = next.data.userType;
    if (userTypeFromStorage) {
      if ( (userTypeFromStorage == UserType.STAFF && neededType == UserType.STAFF)
        || (userTypeFromStorage == UserType.RESIDENT && neededType == UserType.RESIDENT)) {
        return true;
      } 
    } else {
      //Case where the user is not connected
      if(neededType == UserType.NOT_CONNECTED){
        return true;
      }
    }
    
    //Redirection to the home page
    this.router.navigate(['']);
    return false;
  }

}
