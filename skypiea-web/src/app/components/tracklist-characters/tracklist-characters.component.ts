import { Component, OnInit } from '@angular/core';
import { Character } from 'src/app/models/character.model';
import { CharacterService } from 'src/app/services/character.service';
import { Router } from "@angular/router";
import { ElectronicTagService } from 'src/app/services/electronictag.service';
import { ElectronicTag } from 'src/app/models/electronictag.model';


@Component({
  selector: 'app-tracklist-characters',
  templateUrl: './tracklist-characters.component.html',
  styleUrls: ['./tracklist-characters.component.scss']
})
export class TracklistCharactersComponent implements OnInit {
  characters: Array<Character>;
  tag: ElectronicTag;
  newCharacter: Character;

  constructor(private characterService: CharacterService, private router: Router, private electronicTagService: ElectronicTagService) { 
    this.characters = new Array<Character>();
    this.newCharacter = new Character();
  }

  ngOnInit() {
    this.findAll();
    
  }

  findAll(){
    this.characterService.findAll().subscribe((data: Array<Character>)  => {
      this.characters = data;
    });

  }

  select(id: number){
    this.router.navigate(['/tracking/'+id])
  }

}
