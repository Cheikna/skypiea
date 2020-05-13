import { Profile } from '../models/profile.model';

export class ProfileCriteriaJsonParameter {
    profile: Profile;
	hourTelevision: number;
	isSmoker: boolean;
	hoursOutside: number;
    income: number;
    isCook: String;
    isSporty: boolean;
    sportsHours: number;
    
    constructor(profile: Profile, hourTelevision: number, isSmoker: boolean, hoursOutside: number, income: number, isCook: String, isSporty: boolean, sportsHours: number) {
           this.profile = profile;
           this.hourTelevision = hourTelevision;
           this.isSmoker = isSmoker;
           this.hoursOutside = hoursOutside;
           this.income = income;
           this.isCook = isCook;
           this.isSporty = isSporty;
           this.sportsHours = sportsHours;
        }
}