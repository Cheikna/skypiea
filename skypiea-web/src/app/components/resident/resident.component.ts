import {Component, OnInit, ViewChild} from '@angular/core';
import {Resident} from "../../models/resident.model";
import {ResidentService} from "../../services/resident.service";
import {MatTableDataSource} from "@angular/material/table";
import {MatPaginator} from "@angular/material/paginator";
import {MatSort} from "@angular/material/sort";

@Component({
  selector: 'app-resident',
  templateUrl: './resident.component.html',
  styleUrls: ['./resident.component.scss']
})
export class ResidentComponent implements OnInit {
  residents: Array<Resident>;
  residentsWithSupervision: Array<Resident>;
  dataSource : MatTableDataSource<Resident>;
  displayedColumns: string[] = ['firstName', 'lastName', 'birthday', 'supervision'];
  resident: Resident;
  @ViewChild(MatPaginator, {static: true}) paginator: MatPaginator;
  @ViewChild(MatSort, {static: true}) sort: MatSort;



  constructor(private residentService : ResidentService) {
    this.residents = new Array<Resident>();
    this.dataSource = new MatTableDataSource<Resident>();
  }

  ngOnInit() {
    this.residentService.findAll().subscribe((data) =>{
      this.residents = data;
      this.residentsWithSupervision = this.residents.filter(function (resident) {
        return resident.supervision != null;
      })
      this.dataSource = new MatTableDataSource<Resident>(this.residentsWithSupervision);
      this.dataSource.paginator = this.paginator;
      this.dataSource.sort = this.sort;
    })




  }
  applyFilter(event: Event) {
    const filterValue = (event.target as HTMLInputElement).value;
    this.dataSource.filter = filterValue.trim().toLowerCase();

    if (this.dataSource.paginator) {
      this.dataSource.paginator.firstPage();
    }
  }





}
