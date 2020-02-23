import { Component, OnInit, Output, Input } from '@angular/core';
import { FormBuilder, FormGroup, FormControl } from '@angular/forms';
import { Disease } from 'src/app/models/disease.model';
import { DiseaseService } from 'src/app/services/disease.service';
import { Router } from '@angular/router';
import { ToastService } from 'src/app/util/toast.service';
import { ToastType } from 'src/app/enums/toastType.enum';
import { DiseaseType } from 'src/app/enums/disease.enum';
import { DiseaseFormComponent } from 'src/app/sub-components/disease-form/disease-form.component';
import { ClientService } from 'src/app/services/client.service';
import { Client } from 'src/app/models/client.model';

@Component({
  selector: 'app-dynamic-form',
  templateUrl: './dynamic-form.component.html',
  styleUrls: ['./dynamic-form.component.scss'],
  providers: [ DiseaseService ]
})

export class DynamicFormComponent implements OnInit {
  client: Client;
  dynamicForm: FormGroup;
  yesForm: FormGroup;
  disease: Disease;
  diseaseDiabetic: Disease;
  diseaseArthritis: Disease;
  diseaseFracture: Disease;
  diseaseParkinson: Disease;
  diseaseAlzheimer: Disease;
  diseaseDetail: any;//Array<Disease>; DiseaseFormComponent; Array<DiseaseFormComponent>(); DiseaseFormComponent[];
  diseaseForm: FormGroup;
  diabetic: any;
  arthritis: any;
  alzheimer: any;
  fracture: any;
  parkinson: any;
  numberOfDisease: any;
  yes: any;
  no: any;

  constructor(private clientService: ClientService, private diseaseService: DiseaseService, private router : Router, private fb: FormBuilder, private toastService : ToastService) {
    this.dynamicForm = new FormGroup({
      diabetic: new FormControl(),
      alzheimer: new FormControl(),
      arthritis: new FormControl(),
      fracture: new FormControl(),
      parkinson: new FormControl()
    });
    this.yesForm = new FormGroup({
      yes: new FormControl(),
      no: new FormControl()
    })
    this.diseaseDetail = [];
    this.disease = new Disease();
    this.diseaseDiabetic = new Disease();
    this.diseaseArthritis = new Disease();
    this.diseaseFracture = new Disease();
    this.diseaseAlzheimer = new Disease();
    this.diseaseParkinson = new Disease();
    this.diabetic = 0;
    this.arthritis = 0;
    this.alzheimer = 0;
    this.fracture = 0;
    this.parkinson = 0;
    this.numberOfDisease = 0;
    this.client = new Client();
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

  diabeticCheckboxChecked(){
      var checked : Boolean;
      checked = this.dynamicForm.get('diabetic').value;
      if (checked && this.diseaseService.getTreatment() != null && this.diseaseService.getDuration() != null && this.diabetic == 0){
        this.diseaseDiabetic.typeOfDisease = DiseaseType.DIABETIC;
        this.diseaseDiabetic.treatment = this.diseaseService.getTreatment();
        this.diseaseDiabetic.duration = this.diseaseService.getDuration();
        this.diseaseDetail.push(this.diseaseDiabetic);
        this.diabetic += 1;
        this.diseaseService.clearDisease();
      }
      console.log("reserez" + this.yes);
      this.yes = this.yesForm.get('disease');
      console.log("reserez" + this.yes);
      console.log(this.yesForm.get('disease').statusChanges);
      return checked;
  }

  arthritisCheckboxChecked(){
    var checked: Boolean;
    checked = this.dynamicForm.get('arthritis').value;
    if (checked && this.diseaseService.getTreatment() != null && this.diseaseService.getDuration() != null && this.arthritis == 0){
      this.diseaseArthritis.typeOfDisease = DiseaseType.ARTHRITIS;
      this.diseaseArthritis.treatment = this.diseaseService.getTreatment();
      this.diseaseArthritis.duration = this.diseaseService.getDuration();
      console.log('ARTH ' + this.diseaseArthritis.treatment + " " + this.diseaseArthritis.duration);
      this.diseaseDetail.push(this.diseaseArthritis);
      this.arthritis += 1;
      this.diseaseService.clearDisease();
    }
    return checked;
  }

  fractureCheckboxChecked(){
    var checked: Boolean;
    checked = this.dynamicForm.get('fracture').value;
    if (checked && this.diseaseService.getTreatment() != null && this.diseaseService.getDuration() != null && this.fracture == 0){
      this.diseaseFracture.typeOfDisease = DiseaseType.FRACTURE;
      this.diseaseFracture.treatment = this.diseaseService.getTreatment();
      this.diseaseFracture.duration = this.diseaseService.getDuration();
      this.diseaseDetail.push(this.diseaseFracture);
      this.fracture += 1;
      this.diseaseService.clearDisease();
    }
    return checked;
  }

  alzheimerCheckboxChecked(){
    var checked: Boolean;
    checked = this.dynamicForm.get('alzheimer').value;
    if (checked && this.diseaseService.getTreatment() != null && this.diseaseService.getDuration() != null && this.alzheimer == 0){
      this.diseaseAlzheimer.typeOfDisease = DiseaseType.ALZHEIMER;
      this.diseaseAlzheimer.treatment = this.diseaseService.getTreatment();
      this.diseaseAlzheimer.duration = this.diseaseService.getDuration();
      this.diseaseDetail.push(this.diseaseAlzheimer);
      this.alzheimer += 1;
      this.diseaseService.clearDisease();
    }
    return checked;
  }

  parkinsonCheckboxChecked(){
    var checked: Boolean;
    checked = this.dynamicForm.get('parkinson').value;
    if (checked && this.diseaseService.getTreatment() != null && this.diseaseService.getDuration() != null && this.parkinson == 0){
      this.diseaseParkinson.typeOfDisease = DiseaseType.PARKINSON;
      this.diseaseParkinson.treatment = this.diseaseService.getTreatment();
      this.diseaseParkinson.duration = this.diseaseService.getDuration();
      this.diseaseDetail.push(this.diseaseParkinson);
      this.parkinson += 1;
      this.diseaseService.clearDisease();
    }
    return checked;
  }

  createDisease(){
    console.log("reserez" + this.yes);
    this.yes = this.yesForm.get('disease');
    console.log("reserez" + this.yes);
    console.log(this.yesForm.get('disease'));
    
    this.client = this.clientService.getClient();
    this.numberOfDisease += this.diabetic + this.arthritis + this.parkinson + this.fracture + this.alzheimer;
      for (var i = 0; i < this.numberOfDisease; i++){
        this.diseaseDetail[i].client = this.client;
        console.log(JSON.stringify(this.diseaseDetail[i]));
        this.diseaseService.create(this.diseaseDetail[i]).subscribe(
          (data) => {
            if(data){
              console.log("disease created");
              this.router.navigate(['/hobbiesForm']).then(() => {
                this.toastService.displayToast(ToastType.SUCCESS, 'Successful connection', true, 'Please wait, the page will reload');
              });
            } else {
              this.toastService.displayToast(ToastType.ERROR, 'Authentication failed !', true, 
              'Your username or your password is incorrect.', 7000);
            }        
          },
          (error) => this.toastService.displayToast(ToastType.ERROR, 'An error occured !', true, JSON.stringify(error)));
      }
  }

}
