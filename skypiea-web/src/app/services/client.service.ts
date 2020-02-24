import { Injectable } from '@angular/core';
import { RestService } from './rest.service';
import { HttpClient } from '@angular/common/http';
import { Client } from '../models/client.model';

@Injectable({
  providedIn: 'root'
})
export class ClientService extends RestService {

  client: any;

  
  constructor(protected http: HttpClient) { 
    super("clients", http);
  }

  setClient(client: any){
    this.client = client;
  }

  getOneClient(){
    return this.client;
  }


  

}
