import { HttpClient, HttpHeaders } from '@angular/common/http';
import { environment } from 'src/environments/environment';
import { Observable } from 'rxjs';

export abstract class RestService {

  private completeBackendServerUrl: string = "";
  private headers = new HttpHeaders({'content-type': 'application/json'});

  constructor(private endpoint: string, protected http: HttpClient) {
    this.completeBackendServerUrl = `${environment.backendServerUrl}/${this.endpoint}`;
  }

  create(entity: any): Observable<any> {
    return this.http.post(this.completeBackendServerUrl, JSON.stringify(entity), { headers: this.headers });
  }

  findAll(): Observable<any> {
    return this.http.get(this.completeBackendServerUrl, { headers: this.headers });
  }

  delete(id: number): Observable<any> {
    return this.http.delete(`${this.completeBackendServerUrl}/${id}`, { headers: this.headers });
  }

  findById(id :number): Observable<any> {
    return this.http.get(`${this.completeBackendServerUrl}/${id}`, { headers: this.headers });
  }

}
