import { Component, OnInit } from '@angular/core';
import { Client } from 'src/app/models/client.model';
import { ClientService } from 'src/app/services/client.service';
import {FormGroup, FormControl, Validators} from '@angular/forms';

@Component({
  selector: 'app-personnal-form',
  templateUrl: './personnal-form.component.html',
  styleUrls: ['./personnal-form.component.scss']
})
export class PersonnalFormComponent implements OnInit {
  personnalForm: FormGroup;
  clients: Array<Client>;
  newClient: Client;

  constructor(private clientService: ClientService) { 
    this.clients = new Array<Client>();
    this.newClient = new Client();
    this.personnalForm = this.createFormGroup();
  }

  ngOnInit() {
  }

  create(){
    console.log(JSON.stringify(this.newClient));
    this.clientService.create(this.newClient).subscribe(data => {
      console.log("client created");
    }, 
    error => {
      console.log("Error : " + error);
    });
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
