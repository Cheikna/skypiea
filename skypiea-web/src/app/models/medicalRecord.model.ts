import { Client } from './client.model';
import { Entity } from './entity.model';
import { Disease } from '../enums/disease.enum';

export class MedicalRecord extends Entity{
    idClient: Client;
    disease: Disease;
    duration: String;
    treatment: String;
}