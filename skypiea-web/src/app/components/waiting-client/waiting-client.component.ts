import { Component, OnInit, ViewChild } from '@angular/core';
import { ClientService } from 'src/app/services/client.service';
import { DiseaseService } from 'src/app/services/disease.service';
import { Client } from 'src/app/models/client.model';
import { MatTableDataSource, MatPaginator, MatSort } from '@angular/material';
import { ProfileService } from 'src/app/services/profile.service';
import { ClientDetails } from 'src/app/util/clientDetails.module';
import { HttpResponse } from '@angular/common/http';
import { getNonMedicalObjectTypeName } from 'src/app/enums/nonMedicalObjectType.enum';

@Component({
  selector: 'app-waiting-client',
  templateUrl: './waiting-client.component.html',
  styleUrls: ['./waiting-client.component.scss']
})
export class WaitingClientComponent implements OnInit {
  
  numberOfDisease: number;
  clientsDetails: Array<ClientDetails>;
  clients: Array<Client>;
  clientsWithProfile: Array<ClientDetails>;
  dataSource : MatTableDataSource<ClientDetails>;
  client: ClientDetails;
  criteria: string;
  displayedColumns: string[] = ['lastName', 'firstName', 'age', 'email', 'adress', 'phoneNumber', 'disease', 'sporty', 'smoker', 'cinephile', 'cooker', 'sedentary', 'income'];
  @ViewChild(MatPaginator, {static: true}) paginator: MatPaginator;
  @ViewChild(MatSort, {static: true}) sort: MatSort;



  constructor(private clientService : ClientService, private diseaseService: DiseaseService, private profileService: ProfileService) {
    this.clients = new Array<Client>();
    this.dataSource = new MatTableDataSource<ClientDetails>();
    this.clientsDetails = new Array<ClientDetails>();
  }

  ngOnInit() {
    this.setClient();

    this.clientsWithProfile = this.clientsDetails.filter(function (client) {
      return client.firstName != null;
    })  
    this.dataSource = new MatTableDataSource<ClientDetails>(this.clientsWithProfile);
    this.dataSource.paginator = this.paginator;
    this.dataSource.sort = this.sort;
  }

  setClient(){
    this.clientService.findAll().subscribe((data) =>{
      this.clients = data;
      this.clients.forEach(clientData => {
        this.client = new ClientDetails();
        this.client.setLastName(clientData.lastName);
        this.client.setFirstName(clientData.firstName);
        this.client.setAge(clientData.age);
        this.client.setStreet(clientData.streetNumber + " " + clientData.streetName + ",");
        this.client.setCity(clientData.zipCode + " " + clientData.city);
        this.client.setPhoneNumber(clientData.phoneNumber);
        this.client.setEmail(clientData.email);
        this.setDiseasesOnClient(clientData, this.client); 
        this.setProfileOnClient(clientData, this.client);
        this.clientsDetails.push(this.client);
      });

      this.clientsWithProfile = this.clientsDetails.filter(function (client) {
        return client.firstName != null;
      })
      this.dataSource = new MatTableDataSource<ClientDetails>(this.clientsWithProfile);
      this.dataSource.paginator = this.paginator;
      this.dataSource.sort = this.sort;
    })
  }

  setDiseasesOnClient(clientData, client){
    this.diseaseService.findNumberOfDiseaseByClientId(clientData.id).subscribe((disease: number) => {
      this.numberOfDisease = disease;
      client.setNumberOfDisease(this.numberOfDisease);
    });
  }

  setProfileOnClient(clientData, client){
    this.profileService.getProfileCriteriaForClient(clientData.id).subscribe((criteria: string) => {
      var c = JSON.stringify(criteria);
      this.setSportyOnClient(c, client);
      this.setSmokerOnClient(c, client);
      this.setCinephileOnClient(c, client);
      this.setCookerOnClient(c, client);
      this.setSedentaryOnClient(c, client);
      this.setIncomeOnClient(c, client);
    });
  }

  setIncomeOnClient(criteria, client){
    this.profileService.getIncome(criteria).subscribe((income) => {
      client.setIncome(income);
    });
  }

  setSportyOnClient(criteria, client){
    this.profileService.isSporty(criteria).subscribe((sporty) => {
      client.setSporty(sporty);
    });
  }

  setSmokerOnClient(criteria, client){
    this.profileService.isSmoker(criteria).subscribe((smoker) => {
      client.setSmoker(smoker);
    });
  }

  setCinephileOnClient(criteria, client){
    this.profileService.isCinephile(criteria).subscribe((cinephile) => {
      client.setCinephile(cinephile);
    });
  }

  setCookerOnClient(criteria, client){
    this.profileService.isCooker(criteria).subscribe((cook) => {
      client.setCooker(cook);
    });
  }

  setSedentaryOnClient(criteria, client){
    this.profileService.isSedentary(criteria).subscribe((sedentary) => {
      client.setSedentary(sedentary);
    });
  }

  applyFilter(event: Event) {
    const filterValue = (event.target as HTMLInputElement).value;
    this.dataSource.filter = filterValue.trim().toLowerCase();

    if (this.dataSource.paginator) {
      this.dataSource.paginator.firstPage();
    }
  }



}
