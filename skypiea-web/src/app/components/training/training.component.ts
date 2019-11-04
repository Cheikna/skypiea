import { Component, OnInit } from '@angular/core';
import { CharacterService } from 'src/app/services/character.service';
import { Character } from 'src/app/models/character.model';

@Component({
  selector: 'app-training',
  templateUrl: './training.component.html',
  styleUrls: ['./training.component.scss']
})
export class TrainingComponent implements OnInit {

  retrievedCharacter: Character;
  searchedId: number;

  constructor(private characterService : CharacterService ) { }

  ngOnInit() {
  }

  findById() { 
    this.characterService.findById(this.searchedId).subscribe(data => {   
      this.retrievedCharacter = data; 
        console.log(JSON.stringify(data));    
    });
  }

}
