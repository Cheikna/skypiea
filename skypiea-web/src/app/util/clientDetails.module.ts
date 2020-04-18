import { Entity } from '../models/entity.model';

export class ClientDetails extends Entity{
    lastName: string;
    firstName: string;
    age: number;
    street: string;
    city: string;
    phoneNumber: string;
    email: string;
    numberOfDisease: number;
	cinephile: string;
	smoker: string;
	sedentary: string;
    income: string;
    cooker: string;
    sporty: string;

    setLastName(lastName: string){
        this.lastName = lastName;
    }

    setFirstName(firstName: string){
        this.firstName = firstName;
    }

    setAge(age: number){
        this.age = age;
    }

    setStreet(street: string){
        this.street = street;
    }

    setCity(city: string){
        this.city = city;
    }

    setPhoneNumber(phoneNumber: string){
        this.phoneNumber = phoneNumber;
    }

    setEmail(email: string){
        this.email = email;
    }

    setNumberOfDisease(disease: number){
        this.numberOfDisease = disease;
    }

    setCinephile(cinephile: string){
        this.cinephile = cinephile;
    }

    setSmoker(smoker: string){
        this.smoker = smoker;
    }

    setSedentary(sedentary: string){
        this.sedentary = sedentary;
    }

    setIncome(income: string){
        this.income = income;
    }

    setCooker(cooker: string){
        this.cooker = cooker;
    }

    setSporty(sporty: string){
        this.sporty = sporty;
    }
}