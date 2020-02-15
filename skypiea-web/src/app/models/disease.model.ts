import { Entity } from './entity.model';
import { DiseaseType } from '../enums/disease.enum';

export class Disease extends Entity{
    typeOfDisease: DiseaseType;
    duration: String;
    treatment: String;
}
