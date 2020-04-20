import { Entity } from './entity.model';

export class Client extends Entity{
    lastName: string;
    firstName: string;
    age: number;
    streetNumber: number;
    streetName: string;
    city: string;
    zipCode: string;
    phoneNumber: string;
    email: string;
    country: string;
    priorityPoints: number;
}