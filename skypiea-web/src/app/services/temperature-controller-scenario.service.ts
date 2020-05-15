import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { RestService } from './rest.service';
import { Observable } from 'rxjs/internal/Observable';
import { TemperatureControllerScenario } from '../models/temperatureControllerScenario.model';

@Injectable({
  providedIn: 'root'
})
export class TemperatureControllerScenarioService extends RestService {

  constructor(protected http: HttpClient) {
    super("temperature-controller-scenarios", http);
  }

  getTemperatureControllerScenario(room: number): Observable<any> {
    return this.http.get(`${this.completeBackendServerUrl}/${room}`, { headers: this.headers });
  }

  save(objectToSave: TemperatureControllerScenario){
    return this.http.post(`${this.completeBackendServerUrl}/scenario`,JSON.stringify(objectToSave), { headers: this.headers });
  }

  delete(id: number){
    return this.http.post(`${this.completeBackendServerUrl}/scenario/temperatureController/delete`,id, { headers: this.headers });
  }
}
