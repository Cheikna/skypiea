import { Component, OnInit } from '@angular/core';
import { ClientService } from 'src/app/services/client.service';
import { ToastService } from 'src/app/util/toast.service';
import { Router } from '@angular/router';
import { Profile } from 'src/app/models/profile.model';
import { ToastType } from 'src/app/enums/toastType.enum';
import { Client } from 'src/app/models/client.model';
import { ProfileService } from 'src/app/services/profile.service';
import { DiseaseService } from 'src/app/services/disease.service';
import { FormGroup, FormControl } from '@angular/forms';

@Component({
  selector: 'app-hobbies-form',
  templateUrl: './hobbies-form.component.html',
  styleUrls: ['./hobbies-form.component.scss']
})
export class HobbiesFormComponent implements OnInit {
  profile: Profile;
  hobbiesForm: FormGroup;
  client: Client;
  cinephile: FormGroup;
  timeSports: FormGroup;
  income: FormGroup;
  sports: FormGroup;

  constructor(private profileService: ProfileService, private clientService: ClientService, private toastService: ToastService, private router: Router) {
    this.hobbiesForm = new FormGroup({
      cooker: new FormControl(),
      smoker: new FormControl(),
      cinephile: new FormControl(),
      sedentary: new FormControl(),
      timeSports: new FormControl(),
      income: new FormControl(),
      sports: new FormControl(),
      sedentaryHours: new FormControl()
    });
    this.profile = new Profile();
    this.client = new Client();
    this.cinephile = new FormGroup({});
    this.timeSports = new FormGroup({});
    this.income = new FormGroup({});
    this.sports = new FormGroup({});
   }

  ngOnInit() {
  }

  isSmoker(){
    return this.hobbiesForm.get('smoker').value === "true";
  }

  isSportive(){
    return this.hobbiesForm.get('sports').value === "true";
  }

  isSedentary(){
    return this.hobbiesForm.get('sedentary').value === "true";
  }

  createHobby(){
    console.log("income : " + this.income);
    this.profileService.isCinephile(this.cinephile);
    this.profileService.createJsonForProfile().subscribe((data) => console.log(data));
    this.client = this.clientService.getOneClient();
    this.profile.client = this.client;
    this.profile.criteria = JSON.stringify(this.hobbiesForm.value);

    console.log("PROFILE : " + this.profile);

    this.profileService.create(this.profile).subscribe(
      (data) => {
        if(data){
          console.log("profile created");
          //this.router.navigate(['/dynamicForm']).then(() => {
            this.toastService.displayToast(ToastType.SUCCESS, 'Successful connection', true, 'Please wait, the page will reload');
          //});
        } else {
          this.toastService.displayToast(ToastType.ERROR, 'Authentication failed !', true, 
          'Your username or your password is incorrect.', 7000);
        }        
      },
      (error) => this.toastService.displayToast(ToastType.ERROR, 'An error occured !', true, JSON.stringify(error)));

  }

}
