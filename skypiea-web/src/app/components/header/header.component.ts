import { Component, OnInit } from '@angular/core';
import { environment } from 'src/environments/environment';
import { MatDialog, MatDialogRef, MAT_DIALOG_DATA } from '@angular/material/dialog';
import { SignInComponent } from '../../dialogs/sign-in/sign-in.component';
import { WebStorageService } from 'src/app/util/web-storage.service';
import { storageKey } from 'src/app/util/storageKey.util';
import { ToastService } from 'src/app/util/toast.service';
import { ToastType } from 'src/app/enums/toastType.enum';
import { Router } from '@angular/router';

@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.scss']
})
export class HeaderComponent implements OnInit {

  environmentVariables = environment;
  userInfo;

  constructor(private dialog: MatDialog, private webStorageService: WebStorageService, private toastService: ToastService,
    private router: Router) {

  }

  ngOnInit() {
    // Checks if the user type is not null and if it is not, it means tht a user is connected
    if (this.webStorageService.getConnectedUserType()) {
      this.userInfo = this.webStorageService.getSessionAttribute(storageKey.USER_INFO.name);
    }
  }

  openSignInDialog() {
    this.dialog.open(SignInComponent, { panelClass: 'login-dialog' });
  }

  logout() {
    this.webStorageService.removeSessionAttribute(storageKey.USER_INFO.name);
    this.toastService.displayToast(ToastType.SUCCESS, 'You are leaving us', true, 'Please wait, the page will reload');

    setTimeout(() => {
      window.location.reload();
      this.router.navigate(['']);
    }, 1000);

  }

}
