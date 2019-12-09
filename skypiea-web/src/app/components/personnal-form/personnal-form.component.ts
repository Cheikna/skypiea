import { Component, OnInit } from '@angular/core';
import { Client } from 'src/app/models/client.model';
import { ClientService } from 'src/app/services/client.service';

@Component({
  selector: 'app-personnal-form',
  templateUrl: './personnal-form.component.html',
  styleUrls: ['./personnal-form.component.scss']
})
export class PersonnalFormComponent implements OnInit {

  clients: Array<Client>;
  newClient: Client;

  constructor(private clientService: ClientService) { 
    this.clients = new Array<Client>();
    this.newClient = new Client();
  }

  ngOnInit() {
  }

  create(){
    this.clientService.create(this.newClient).subscribe(data => {
      console.log("client created");
    }, 
    error => {
      console.log("Error : " + error);
    });
    this.newClient.name = "";

  }
}
