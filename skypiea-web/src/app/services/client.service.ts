import { Injectable } from '@angular/core';
import { RestService } from './rest.service';
import { HttpClient } from '@angular/common/http';
import { Client } from '../models/client.model';

@Injectable({
  providedIn: 'root'
})
export class ClientService extends RestService {

  client: any;

  setClient(client: any){
    this.client = client;
  }

  getOneClient(){
    return this.client;
  }

  getClient(){
    return this.http.get(`${this.completeBackendServerUrl}/clients`, { headers: this.headers });
  }

  constructor(protected http: HttpClient) { 
    super("clients", http);
  }

  

}
