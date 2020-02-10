import { Entity } from './entity.model';
import { DiseaseType } from '../enums/disease.enum';
import { Disease } from './disease.model';

export class DiseaseSuper {
    disease: Disease;
    typeOfDisease: DiseaseType;
}