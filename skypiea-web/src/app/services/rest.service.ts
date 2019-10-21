import { HttpClient, HttpHeaders } from '@angular/common/http';
import { environment } from 'src/environments/environment';
import { Observable } from 'rxjs';

export class RestService {

  private completeBackendServerUrl: string = "";
  private headers = new HttpHeaders({'content-type': 'application/json'});

  constructor(protected endpoint: string, private http: HttpClient) {
    this.completeBackendServerUrl = `${environment.backendServerUrl}/${this.endpoint}`;
  }

  create(entity: any): Observable<any> {
    console.log("create : " + this.completeBackendServerUrl);
    return this.http.post(this.completeBackendServerUrl, JSON.stringify(entity), { headers: this.headers });
  }

  findAll(): Observable<any> {
    return this.http.get(this.completeBackendServerUrl, { headers: this.headers });
  }

  delete(id: number): Observable<any> {
    return this.http.delete(`${this.completeBackendServerUrl}/${id}`, { headers: this.headers });
  }

}
