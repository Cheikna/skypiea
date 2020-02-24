import { Entity } from './entity.model';
import { DiseaseType } from '../enums/disease.enum';
import { Client } from './client.model';

export class Disease extends Entity{
    typeOfDisease: DiseaseType;
    duration: String;
    treatment: String;
    client: Client;
}
    

