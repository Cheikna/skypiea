import { Component, OnInit, ViewChild, AfterViewInit } from '@angular/core';
import { Router } from "@angular/router";
import { ElectronicTagService } from 'src/app/services/electronictag.service';
import { ElectronicTag } from 'src/app/models/electronictag.model';
import { Resident } from 'src/app/models/resident.model';
import { ResidentService } from 'src/app/services/resident.service';
import { MatTableDataSource, MatPaginator } from '@angular/material';


@Component({
  selector: 'app-tracklist-characters',
  templateUrl: './tracklist-characters.component.html',
  styleUrls: ['./tracklist-characters.component.scss']
})
export class TracklistCharactersComponent implements OnInit, AfterViewInit {
  tag: ElectronicTag;
  public dataSource = new MatTableDataSource<Resident>();
  public displayedColumns = ['lastName', 'firstName', 'select'];

  @ViewChild(MatPaginator, {static:false}) paginator: MatPaginator;

  constructor(private residentService: ResidentService, private router: Router, private electronicTagService: ElectronicTagService) { 
  }

  ngOnInit() {
    this.findAll();
  }

  ngAfterViewInit(): void {
    this.dataSource.paginator = this.paginator;
  }

  findAll(){
    this.residentService.findAll().subscribe((data: Array<Resident>)  => {
      this.dataSource.data = data;
    });
  }

  public doFilter = (value: string) => {
    this.dataSource.filter = value.trim().toLocaleLowerCase();
  }


  select(id: number){
    this.router.navigate(['/tracking/'+id])
  }

}
