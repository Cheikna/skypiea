import { Component, OnInit } from '@angular/core';
import { Character } from 'src/app/models/character.model';
import { CharacterService } from 'src/app/services/character.service';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.scss']
})
export class HomeComponent implements OnInit {

  characters: Array<Character>;
  newCharacter: Character;

  constructor(private characterService: CharacterService) { 
    this.characters = new Array<Character>();
    this.newCharacter = new Character();
  }

  ngOnInit() {
  }

  findAll(){
    this.characterService.findAll().subscribe((data: Array<Character>)  => {
      this.characters = data;
    });

  }

  create(){
    this.characterService.create(this.newCharacter).subscribe(data => {
      console.log("character created");
    }, 
    error => {
      console.log("Error : " + error);
    });
    this.newCharacter.name = "";

  }

  delete(id: number){
    this.characterService.delete(id).subscribe(data => {
      console.log("character deleted");
    }, 
    error => {
      console.log("Error : " + error);
    });
  }

}
