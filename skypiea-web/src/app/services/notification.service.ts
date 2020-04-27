import { Injectable } from '@angular/core';
import { RestService } from './rest.service';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class NotificationService extends RestService {

  constructor(protected http: HttpClient) { 
    super("notifications", http);
  }

  send(entity: any, residentId: number): Observable<any> {
    return this.http.post(`${this.completeBackendServerUrl}/residents/${residentId}`, JSON.stringify(entity), { headers: this.headers });
  }

  sendToAllResidents(entity: any): Observable<any> {
    return this.http.post(`${this.completeBackendServerUrl}/residents`, JSON.stringify(entity), { headers: this.headers });
  }

  findByResidentId(id :number): Observable<any> {
    return this.http.get(`${this.completeBackendServerUrl}/residents/${id}`, { headers: this.headers });
  }

  findAllTemplatesAndNotifications(): Observable<any> {
    return this.http.get(`${this.completeBackendServerUrl}/templates-and-notifications`, { headers: this.headers });
  }

  readNotification(notificationId: number): Observable<any> {
    return this.http.put(`${this.completeBackendServerUrl}/${notificationId}/read`, { headers: this.headers });
  }

}
