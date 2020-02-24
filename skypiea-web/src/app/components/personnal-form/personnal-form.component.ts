import { Component, OnInit } from '@angular/core';
import { Client } from 'src/app/models/client.model';
import { ClientService } from 'src/app/services/client.service';
import {FormGroup, FormControl, Validators} from '@angular/forms';
import { ToastService } from 'src/app/util/toast.service';
import { Router } from '@angular/router';
import { ToastType } from 'src/app/enums/toastType.enum';

@Component({
  selector: 'app-personnal-form',
  templateUrl: './personnal-form.component.html',
  styleUrls: ['./personnal-form.component.scss']
})
export class PersonnalFormComponent implements OnInit {
  personnalForm: FormGroup;
  newClient: Client;

  constructor(private clientService: ClientService, private toastService: ToastService, private router: Router) { 
    this.newClient = new Client();
    this.personnalForm = this.createFormGroup();
  }

  ngOnInit() {
  }

  create(){
    console.log(JSON.stringify(this.newClient));
    this.clientService.create(this.newClient).subscribe(
      (data) => {
        if(data){
          console.log("client created");
          this.router.navigate(['/dynamicForm']).then(() => {
            this.toastService.displayToast(ToastType.SUCCESS, 'Successful connection', true, 'Please wait, the page will reload');
          });
          this.clientService.setClient(data);
        } else {
          this.toastService.displayToast(ToastType.ERROR, 'Authentication failed !', true, 
          'Your username or your password is incorrect.', 7000);
        }        
      },
      (error) => this.toastService.displayToast(ToastType.ERROR, 'An error occured !', true, JSON.stringify(error)));
  }

  createFormGroup(){
    return new FormGroup({
      firstName: new FormControl('', [Validators.required]),
      lastName: new FormControl('', [Validators.required]),
      age: new FormControl('', [Validators.required]),
      streetNumber: new FormControl('', [Validators.required]),
      streetName: new FormControl('', [Validators.required]),
      city: new FormControl('', [Validators.required]),
      zipCode: new FormControl('', [Validators.required]),
      country: new FormControl('', [Validators.required]),
      phoneNumber: new FormControl('', [Validators.required]),
      email: new FormControl('', [Validators.required]),
      cgu: new FormControl('', [Validators.required])
    })
  }
}
