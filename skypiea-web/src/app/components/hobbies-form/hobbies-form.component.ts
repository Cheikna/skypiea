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
import { ProfileCriteriaJsonParameter } from 'src/app/util/ProfileCriteriaJsonParameter.module';

@Component({
  selector: 'app-hobbies-form',
  templateUrl: './hobbies-form.component.html',
  styleUrls: ['./hobbies-form.component.scss']
})
export class HobbiesFormComponent implements OnInit {
  profile: Profile;
  hobbiesForm: FormGroup;
  client: Client;
  cinephile: number;
  income: number;
  timeSports: number;
  outsideHours: number;
  profileCriteriaJsonParameter: ProfileCriteriaJsonParameter;

  constructor(private profileService: ProfileService, private clientService: ClientService, private toastService: ToastService, private router: Router) {
    this.hobbiesForm = new FormGroup({
      cooker: new FormControl(),
      smoker: new FormControl(),
      cinephile: new FormControl(),
      sedentary: new FormControl(),
      timeSports: new FormControl(),
      income: new FormControl(),
      sports: new FormControl(), 
      outsideHours: new FormControl()
    });
    this.profile = new Profile();
    this.client = new Client();
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
    this.profileCriteriaJsonParameter = new ProfileCriteriaJsonParameter(this.profile, this.cinephile, this.isSmoker(), this.outsideHours, this.income, this.hobbiesForm.get('cooker').value, this.isSportive(), this.timeSports);
    this.client = this.clientService.getOneClient();
    this.profile.client = this.client;
    console.log("TEST");
    this.profileService.create(this.profileCriteriaJsonParameter).subscribe(
      (data) => {
        if(data){
          console.log("profile created");
          this.router.navigate(['/']).then(() => {
            this.toastService.displayToast(ToastType.SUCCESS, 'Your are registred', true, 'Please wait until a place becomes available');
          });
        } else {
          this.toastService.displayToast(ToastType.ERROR, 'Authentication failed !', true, 
          'Your username or your password is incorrect.', 7000);
        }        
      },
      (error) => this.toastService.displayToast(ToastType.ERROR, 'An error occured !', true, JSON.stringify(error)));
  }


}
