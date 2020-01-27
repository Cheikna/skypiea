import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, FormControl } from '@angular/forms';
import { MedicalRecord } from 'src/app/models/medicalRecord.model';
import { MedicalRecordService } from 'src/app/services/medical-record.service';
import { Router } from '@angular/router';
import { ToastService } from 'src/app/util/toast.service';
import { ToastType } from 'src/app/enums/toastType.enum';
import { Disease } from 'src/app/enums/disease.enum';
import { DiseaseFormComponent } from 'src/app/sub-components/disease-form/disease-form.component';


@Component({
  selector: 'app-dynamic-form',
  templateUrl: './dynamic-form.component.html',
  styleUrls: ['./dynamic-form.component.scss']
})
export class DynamicFormComponent implements OnInit {
  dynamicForm: FormGroup;
  medicalRecord: MedicalRecord;
  
  constructor(private medicalRecordService: MedicalRecordService, private router : Router, private fb: FormBuilder, private toastService : ToastService) {
    this.dynamicForm = new FormGroup({
      diabetic: new FormControl(),
      alzheimer: new FormControl(),
      arthritis: new FormControl(),
      fracture: new FormControl(),
      parkinson: new FormControl()

    });
    this.medicalRecord = new MedicalRecord();
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
      return this.dynamicForm.get('diabetic').value;
  }

  arthritisCheckboxChecked(){
    return this.dynamicForm.get('arthritis').value;
  }

  fractureCheckboxChecked(){
    return this.dynamicForm.get('fracture').value;
  }

  alzheimerCheckboxChecked(){
    return this.dynamicForm.get('alzheimer').value;
  }

  parkinsonCheckboxChecked(){
    return this.dynamicForm.get('parkinson').value;
  }

  createMedicalRecord(){
    console.log(JSON.stringify(this.medicalRecord));
    /*this.medicalRecordService.create(this.medicalRecord).subscribe(
      (data) => {
        console.log(data);
        if(data){
          console.log("medical record created");
          this.router.navigate(['/test']).then(() => {
            this.toastService.displayToast(ToastType.SUCCESS, 'Successful connection', true, 'Please wait, the page will reload');
          });
        } else {
          this.toastService.displayToast(ToastType.ERROR, 'Authentication failed !', true, 
          'Your username or your password is incorrect.', 7000);
        }
      },
      (error) => this.toastService.displayToast(ToastType.ERROR, 'An error occured !', true, JSON.stringify(error)));
  */
    }

  createDiabeticRecord(){
    if(this.diabeticCheckboxChecked){
      this.medicalRecord.disease = Disease.DIABETIC;
    }
  }

  



  


}
