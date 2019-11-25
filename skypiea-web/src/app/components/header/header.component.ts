import { Component, OnInit } from '@angular/core';
import { environment } from 'src/environments/environment';
import {MatDialog, MatDialogRef, MAT_DIALOG_DATA} from '@angular/material/dialog';
import { SignInComponent } from '../sign-in/sign-in.component';

@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.scss']
})
export class HeaderComponent implements OnInit {
  
  environmentVariables = environment;

  constructor(private dialog: MatDialog) { 

  }

  ngOnInit() {
  }

  openSignInDialog() {
    this.dialog.open(SignInComponent, { panelClass: 'login-dialog'});
  }

}
