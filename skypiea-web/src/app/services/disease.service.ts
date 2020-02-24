import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { RestService } from './rest.service';
import { DiseaseFormComponent } from '../sub-components/disease-form/disease-form.component';
import { DiseaseType } from '../enums/disease.enum';
import { FormControl, Validators, FormGroup } from '@angular/forms';

@Injectable({
  providedIn: 'root'
})
export class DiseaseService extends RestService {
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

  getDiseaseByClient(clientId: number){
    return this.http.get(`${this.completeBackendServerUrl}/diseases/${clientId}`, { headers: this.headers });
  }
}
