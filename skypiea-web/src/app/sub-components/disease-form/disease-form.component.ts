import { Component, OnInit, Output } from '@angular/core';
import { DynamicFormComponent } from 'src/app/components/dynamic-form/dynamic-form.component';
import { FormGroup, FormControl, Validators } from '@angular/forms';
import { Disease } from 'src/app/models/disease.model';
import { ToastService } from 'src/app/util/toast.service';
import { Router } from '@angular/router';
import { ToastType } from 'src/app/enums/toastType.enum';
import { DiseaseService } from '../../services/disease.service';

@Component({
  selector: 'app-disease-form',
  templateUrl: './disease-form.component.html',
  styleUrls: ['./disease-form.component.scss']
})
export class DiseaseFormComponent implements OnInit {
  treatment: String;
  duration: String;
  diseaseForm: FormGroup;
  dynamicDisease: DynamicFormComponent;
  newDisease: Disease;

  constructor(private diseaseService: DiseaseService,  private toastService: ToastService, private router: Router) {
    this.newDisease = new Disease();
    this.diseaseForm = this.createFormGroup();
   }

  ngOnInit() {
  }

  create(){
    /*console.log(this.diseaseService.getTypeOfDisease());
    this.newDisease.typeOfDisease = this.diseaseService.getTypeOfDisease();

    console.log(JSON.stringify(this.newDisease));
    console.log("test : " + this.newDisease.typeOfDisease);
    
    this.diseaseService.create(this.newDisease).subscribe(
      (data) => {
        if(data){
          console.log("disease created");
            this.toastService.displayToast(ToastType.SUCCESS, 'Successful connection', true, 'Please wait, the page will reload');
        } else {
          this.toastService.displayToast(ToastType.ERROR, 'Authentication failed !', true, 
          'Your username or your password is incorrect.', 7000);
        }        
      },
      (error) => this.toastService.displayToast(ToastType.ERROR, 'An error occured !', true, JSON.stringify(error)));*/
      console.log(this.newDisease.treatment);
      console.log(this.newDisease.duration);
      this.diseaseService.setTreatment(this.newDisease.treatment);
      this.diseaseService.setDuration(this.newDisease.duration);
  }

  createFormGroup(){
    return new FormGroup({
      treatment: new FormControl('', [Validators.required]),
      duration: new FormControl('', [Validators.required])
    })
  }



}
