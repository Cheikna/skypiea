import { Injectable } from '@angular/core';
import { RestService } from './rest.service';
import { HttpClient } from '@angular/common/http';
import { Client } from '../models/client.model';
import { ClientDetails } from '../util/clientDetails.module';

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

  getClientsDetails(clients: Client[]){
    return this.http.get(`${this.completeBackendServerUrl}/clientDetails/{clients}`,{ headers: this.headers });
  }

  getPriorityPointsPerClientsDiseaseIncomeCriteria(){
    return this.http.get(`${this.completeBackendServerUrl}/priorityPointsDiseaseIncomeCriteria`, { headers: this.headers });
  }

  getPriorityPointsPerClientsDiseaseCriteriaIncome(){
    return this.http.get(`${this.completeBackendServerUrl}/priorityPointsDiseaseCriteriaIncome`, { headers: this.headers });
  }

  getPriorityPointsPerClientsIncomeDiseaseCriteria(){
    return this.http.get(`${this.completeBackendServerUrl}/priorityPointsIncomeDiseaseCriteria`, { headers: this.headers });
  }

  getPriorityPointsPerClientsIncomeCriteriaDisease(){
    return this.http.get(`${this.completeBackendServerUrl}/priorityPointsIncomeCriteriaDisease`, { headers: this.headers });
  }

  getPriorityPointsPerClientsCriteriaIncomeDisease(){
    return this.http.get(`${this.completeBackendServerUrl}/priorityPointsCriteriaIncomeDisease`, { headers: this.headers });
  }

  getPriorityPointsPerClientsCriteriaDiseaseIncome(){
    return this.http.get(`${this.completeBackendServerUrl}/priorityPointsCriteriaDiseaseIncome`, { headers: this.headers });
  }


  sortedClientDetailsList(clientDetailsList: ClientDetails[]){
    return this.http.post(`${this.completeBackendServerUrl}/sortedList`, clientDetailsList, { headers: this.headers });
  }

  

}
