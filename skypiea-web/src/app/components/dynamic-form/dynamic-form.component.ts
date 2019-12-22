import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormControl, FormGroup } from '@angular/forms';

@Component({
  selector: 'app-dynamic-form',
  templateUrl: './dynamic-form.component.html',
  styleUrls: ['./dynamic-form.component.scss']
})
export class DynamicFormComponent implements OnInit {
  dynamicForm: FormGroup;
  constructor(private fb: FormBuilder) { }

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



  


}
