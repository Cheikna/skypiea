import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { RestService } from './rest.service';

@Injectable({
  providedIn: 'root'
})
export class MedicalRecordService extends RestService {

  constructor(protected http: HttpClient) { 
    super("medical-records", http);
  }
}
