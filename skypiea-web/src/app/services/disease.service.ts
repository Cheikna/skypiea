import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { RestService } from './rest.service';
import { DiseaseType } from '../enums/disease.enum';


@Injectable({
  providedIn: 'root'
})
export class DiseaseService extends RestService{
  tmp: any;
  treatment: any;
  duration: any;
  client: any;

  constructor(protected http: HttpClient) { 
    super("diseases", http);
  }

  clearDisease(){
    this.treatment = null;
    this.duration = null;
  }


  getTypeOfDisease(){
    return this.tmp;
  }

  getTreatment(){
    return this.treatment;
  }

  getDuration(){
    return this.duration;
  }

  setTypeOfDisease(type: DiseaseType){
    this.tmp = type;
  }

  setTreatment(treatment: String){
    this.treatment = treatment;
  }

  setDuration(duration: String){
    this.duration = duration;
  }

  getOneClient(){
    return this.client;
  }

  setClient(client: any){
      this.client = client;
  }

  findNumberOfDiseaseByClientId(clientId: number){
    return this.http.get(`${this.completeBackendServerUrl}/client/${clientId}`, { headers: this.headers });
  }
}
