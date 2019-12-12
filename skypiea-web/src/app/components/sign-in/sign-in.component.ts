import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators, FormControl } from '@angular/forms';
import { AuthenticationService } from 'src/app/services/authentication.service';
import { Logon } from 'src/app/models/logon.model';
import { ToastrService } from 'ngx-toastr';
import { ToastService } from 'src/app/util/toast.service';
import { ToastType } from 'src/app/enums/toastType.enum';
import { User } from 'src/app/models/user.model';
import { Router } from '@angular/router';

@Component({
  selector: 'app-sign-in',
  templateUrl: './sign-in.component.html',
  styleUrls: ['./sign-in.component.scss']
})
export class SignInComponent implements OnInit {

  signInForm: FormGroup;

  constructor(private formBuilder: FormBuilder, private authenticationService: AuthenticationService, 
    private toastService: ToastService, private router: Router) { 
  }

  ngOnInit() {
    this.initializeForms();
  }

  private initializeForms(){
    this.signInForm = this.formBuilder.group({
      username: ['', Validators.required],
      password: ['', Validators.required]
    });
  }

  authenticate(){
    const logon: Logon = new Logon(this.signInForm.value);
    this.authenticationService.login(logon).subscribe(
      (data) => {
        if(data){
          console.log(JSON.stringify(data));
          this.toastService.displayToast(ToastType.SUCCESS, 'Successful connection', true);
          this.authenticationService.saveSuccessfullAuthentication(data);
          // TODO : redirect to the home page according to the user Type (STAFF or RESIDENT) and get his extras information
        } else {
          this.toastService.displayToast(ToastType.ERROR, 'Authentication failed !', true, 
          'Your username or your password is incorrect.', 7000);
        }        
      },
      (error) => this.toastService.displayToast(ToastType.ERROR, 'An error occured !', true, JSON.stringify(error)));
  }
}
