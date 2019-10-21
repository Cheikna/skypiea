import { Injectable } from '@angular/core';
import { RestService } from './rest.service';
import { HttpClient } from '@angular/common/http';
import { Character } from '../models/character.model';

@Injectable({
  providedIn: 'root'
})
export class CharacterService {

  private restService: RestService;

  constructor(private http: HttpClient) { 
    this.restService = new RestService("characters", this.http);
  }

  findAll(){
    return this.restService.findAll();
  }

  create(character: Character){
    return this.restService.create(character);
  }

  delete(id: number){
    return this.restService.delete(id);
  }
}
