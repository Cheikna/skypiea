import { Injectable } from '@angular/core';
import { RestService } from './rest.service';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs/internal/Observable';
import { AlarmClockScenario } from '../models/alarmClockScenario.model';


@Injectable({
  providedIn: 'root'
})
export class AlarmClockScenarioService extends RestService {

  
  constructor(protected http: HttpClient) {
    super("alarm-clock-scenarios", http);
  }

  getAlarmClockScenario(room: number): Observable<any> {
    return this.http.get(`${this.completeBackendServerUrl}/${room}`, { headers: this.headers });
  }

  save(objectToSave: AlarmClockScenario){
    return this.http.post(`${this.completeBackendServerUrl}/scenario`,JSON.stringify(objectToSave), { headers: this.headers });
  }

}
