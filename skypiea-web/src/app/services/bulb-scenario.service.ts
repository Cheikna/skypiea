import { Injectable } from '@angular/core';
import { RestService } from './rest.service';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs/internal/Observable';
import { BulbScenario } from '../models/bulbScenario.model';


@Injectable({
  providedIn: 'root'
})
export class BulbScenarioService extends RestService {

  
  constructor(protected http: HttpClient) {
    super("bulb-scenarios", http);
  }

  getBulbScenario(room: number): Observable<any> {
    return this.http.get(`${this.completeBackendServerUrl}/${room}`, { headers: this.headers });
  }

  save(objectToSave: BulbScenario){
    return this.http.post(`${this.completeBackendServerUrl}/scenario`,JSON.stringify(objectToSave), { headers: this.headers });
  }

}