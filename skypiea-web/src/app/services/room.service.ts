import { Injectable } from '@angular/core';
import { RestService } from './rest.service';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class RoomService extends RestService {

  constructor(protected http: HttpClient) { 
    super("rooms", http);
  }

  getRoomsSummaries(){
    return this.http.get(this.completeBackendServerUrl, { headers: this.headers });
  }
}
