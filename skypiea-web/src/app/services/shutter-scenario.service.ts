import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { RestService } from './rest.service';
import { Observable } from 'rxjs/internal/Observable';
import { ShutterScenario } from '../models/shutterScenario.model';

@Injectable({
  providedIn: 'root'
})
export class ShutterScenarioService extends RestService {

  constructor(protected http: HttpClient) {
    super("shutter-scenarios", http);
  }

  getShutterScenario(room: number): Observable<any> {
    return this.http.get(`${this.completeBackendServerUrl}/${room}`, { headers: this.headers });
  }

  save(objectToSave: ShutterScenario){
    return this.http.post(`${this.completeBackendServerUrl}/scenario`,JSON.stringify(objectToSave), { headers: this.headers });
  }

  delete(id: number){
    return this.http.post(`${this.completeBackendServerUrl}/scenario/shutter/delete`,id, { headers: this.headers });
  }
}
