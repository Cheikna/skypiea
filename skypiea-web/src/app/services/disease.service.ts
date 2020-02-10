import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { RestService } from './rest.service';
import { DiseaseType } from '../enums/disease.enum';
import { Disease } from '../models/disease.model';
import { FormControl, Validators, FormGroup } from '@angular/forms';
import { DiseaseFormComponent } from '../sub-components/disease-form/disease-form.component';

@Injectable({
  providedIn: 'root'
})
export class DiseaseService extends RestService {
  tmp: any;

  constructor(protected http: HttpClient) { 
    super("diseases", http);
  }


  getTypeOfDisease(){
    return this.tmp;
  }

  setTypeOfDisease(type: DiseaseType){
    this.tmp = type;
  }

  toFormGroup(diseaseForm: DiseaseFormComponent[] ) {
    return new FormGroup({
      treatment: new FormControl('', [Validators.required]),
      duration: new FormControl('', [Validators.required])
    });
  }
}
