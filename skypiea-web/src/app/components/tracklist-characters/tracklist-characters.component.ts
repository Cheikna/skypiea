import { Component, OnInit } from '@angular/core';
import { Router } from "@angular/router";
import { ElectronicTagService } from 'src/app/services/electronictag.service';
import { ElectronicTag } from 'src/app/models/electronictag.model';
import { Resident } from 'src/app/models/resident.model';
import { ResidentService } from 'src/app/services/resident.service';


@Component({
  selector: 'app-tracklist-characters',
  templateUrl: './tracklist-characters.component.html',
  styleUrls: ['./tracklist-characters.component.scss']
})
export class TracklistCharactersComponent implements OnInit {
  residents: Array<Resident>;
  tag: ElectronicTag;
  newResident: Resident;

  constructor(private residentService: ResidentService, private router: Router, private electronicTagService: ElectronicTagService) { 
    this.residents = new Array<Resident>();
    this.newResident = new Resident();
  }

  ngOnInit() {
    this.findAll();
  }

  findAll(){
    this.residentService.findAll().subscribe((data: Array<Resident>)  => {
      this.residents = data;
    });

  }

  select(id: number){
    this.router.navigate(['/tracking/'+id])
  }

}
