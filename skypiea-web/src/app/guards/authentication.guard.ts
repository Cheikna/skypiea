import { Injectable } from '@angular/core';
import { CanActivate, ActivatedRouteSnapshot, RouterStateSnapshot, UrlTree, Router } from '@angular/router';
import { Observable } from 'rxjs';
import { WebStorageService } from '../util/web-storage.service';
import { ToastType } from '../enums/toastType.enum';
import { ToastService } from '../util/toast.service';

@Injectable({
  providedIn: 'root'
})
export class AuthenticationGuard implements CanActivate {

  constructor(private router: Router, private webStorageService: WebStorageService, private toastService: ToastService) { }

  canActivate(
    next: ActivatedRouteSnapshot,
    state: RouterStateSnapshot): Observable<boolean | UrlTree> | Promise<boolean | UrlTree> | boolean | UrlTree {
    const userTypeFromStorage: string = this.webStorageService.getConnectedUserType();
    const neededType: string = next.data.userType;
    if (userTypeFromStorage == neededType) {
      return true;
    }
    
    //Redirection to the home page
    this.toastService.displayToast(ToastType.WARNING, 'The page you wanted is not reachable !', true, 'Please be sure that you are connected or contact the administrator', 5500);
    this.router.navigate(['']);
    return false;
  }

}
