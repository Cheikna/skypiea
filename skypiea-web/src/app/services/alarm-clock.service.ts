import { Injectable } from '@angular/core';
import { RestService } from './rest.service';
import { HttpClient } from '@angular/common/http';
@Injectable({
  providedIn: 'root'
})

export class AlarmClockService extends RestService {

  constructor(protected http: HttpClient) { 
    super("nonMedicalConnectedObjects", http);
  }
    
}