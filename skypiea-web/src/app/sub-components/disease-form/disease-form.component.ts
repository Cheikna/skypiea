import { Component, OnInit } from '@angular/core';
import { FormGroup, FormControl, Validators } from '@angular/forms';

@Component({
  selector: 'app-disease-form',
  templateUrl: './disease-form.component.html',
  styleUrls: ['./disease-form.component.scss']
})
export class DiseaseFormComponent implements OnInit {
  diseaseForm: FormGroup;
  treatment: String;
  duration: String;

  constructor() {
    this.diseaseForm = this.createFormGroup();
   }

  ngOnInit() {
  }

  createFormGroup(){
    return new FormGroup({
      treatment: new FormControl('', [Validators.required]),
      duration: new FormControl('', [Validators.required])
    })
  }

}
