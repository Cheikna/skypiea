import { Component, OnInit, Output, Input } from '@angular/core';
import { FormBuilder, FormGroup, FormControl } from '@angular/forms';
import { Disease } from 'src/app/models/disease.model';
import { DiseaseService } from 'src/app/services/disease.service';
import { Router } from '@angular/router';
import { ToastService } from 'src/app/util/toast.service';
import { ToastType } from 'src/app/enums/toastType.enum';
import { DiseaseType } from 'src/app/enums/disease.enum';
import { DiseaseFormComponent } from 'src/app/sub-components/disease-form/disease-form.component';
import { Client } from 'src/app/models/client.model';



@Component({
  selector: 'app-dynamic-form',
  templateUrl: './dynamic-form.component.html',
  styleUrls: ['./dynamic-form.component.scss'],
  providers: [ DiseaseService ]
})
export class DynamicFormComponent implements OnInit {
  dynamicForm: FormGroup;
  disease: Disease;
  @Input() diseaseDetail: DiseaseFormComponent;
  diseaseForm: FormGroup;
  
  constructor(private diseaseService: DiseaseService, private router : Router, private fb: FormBuilder, private toastService : ToastService) {
    this.dynamicForm = new FormGroup({
      diabetic: new FormControl(),
      alzheimer: new FormControl(),
      arthritis: new FormControl(),
      fracture: new FormControl(),
      parkinson: new FormControl()
    });
    this.disease = new Disease();
   }

  ngOnInit() {
    this.dynamicForm = this.fb.group({
      diabetic: [false],
      arthritis: [false],
      fracture: [false],
      alzheimer: [false],
      parkinson: [false],
    });
  }

  createDisease(){
    
  }

  diabeticCheckboxChecked(){
      var checked : Boolean;
      checked = this.dynamicForm.get('diabetic').value;
      if (checked){
       this.diseaseService.setTypeOfDisease(DiseaseType.DIABETIC);
      }
      return checked;
  }

  arthritisCheckboxChecked(){
    var checked: Boolean;
    checked = this.dynamicForm.get('arthritis').value;
    if (checked){
      this.diseaseService.setTypeOfDisease(DiseaseType.ARTHRITIS);
    }
    return checked;
  }

  fractureCheckboxChecked(){
    var checked: Boolean;
    checked = this.dynamicForm.get('fracture').value;
    if (checked){
      this.diseaseService.setTypeOfDisease(DiseaseType.FRACTURE);
    }
    return checked;
  }

  alzheimerCheckboxChecked(){
    var checked: Boolean;
    checked = this.dynamicForm.get('alzheimer').value;
    if (checked){
      this.diseaseService.setTypeOfDisease(DiseaseType.ALZHEIMER);
    }
    return checked;
  }

  parkinsonCheckboxChecked(){
    var checked: Boolean;
    checked = this.dynamicForm.get('parkinson').value;
    if (checked){
      this.diseaseService.setTypeOfDisease(DiseaseType.PARKINSON);
    }
    return checked;
  }

}
