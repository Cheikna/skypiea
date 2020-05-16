import { Component, OnInit, ViewChild } from '@angular/core';
import { ClientService } from 'src/app/services/client.service';
import { DiseaseService } from 'src/app/services/disease.service';
import { Client } from 'src/app/models/client.model';
import { MatTableDataSource, MatPaginator, MatSort } from '@angular/material';
import { ProfileService } from 'src/app/services/profile.service';
import { ClientDetails } from 'src/app/util/clientDetails.module';
import { Router } from '@angular/router';

@Component({
  selector: 'app-waiting-client',
  templateUrl: './waiting-client.component.html',
  styleUrls: ['./waiting-client.component.scss']
})
export class WaitingClientComponent implements OnInit {
  numberOfDisease: number;
  typeSort: any;
  key: any;
  clientsDetails: Array<ClientDetails>;
  clients: Array<Client>;
  clientsWithProfile: Array<ClientDetails>;
  dataSource : MatTableDataSource<ClientDetails>;
  client: ClientDetails;
  criteria: string;
  displayedColumns: string[] = ['lastName', 'firstName', 'age', 'email', 'adress', 'phoneNumber', 'disease', 'sporty', 'smoker', 'cinephile', 'cooker', 'sedentary', 'income', 'priorityPoints'];
  @ViewChild(MatPaginator, {static: true}) paginator: MatPaginator;
  firstPriority: String;
  secondPriority: String;
  thirdPriority: String;
  incomeSearch: String;
  diseaseSearch: String;
  criteriaSearch: String;


  constructor(private clientService : ClientService, private diseaseService: DiseaseService, private profileService: ProfileService, private _router: Router) {
    this.clients = new Array<Client>();
    this.dataSource = new MatTableDataSource<ClientDetails>();
    this.clientsDetails = new Array<ClientDetails>();
    this.incomeSearch = "Income";
    this.diseaseSearch = "Disease";
    this.criteriaSearch = "Criteria";
    this.typeSort = localStorage.getItem(this.key);
  }

  ngOnInit() {
    this.setClient();
  }

  refresh(){
    this._router.navigateByUrl('', { skipLocationChange: true }).then(() => {
      this._router.navigate(['/waitingClient']);
    }); 
    this.testTri();
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
        this.client.setPriorityPoints(clientData.priorityPoints);
        this.setDiseasesOnClient(clientData, this.client); 
        this.setProfileOnClient(clientData, this.client);
        this.clientsDetails.push(this.client);
      }
      );

      this.clientsWithProfile = this.clientsDetails.filter(function (client) {
        return client.firstName != null;
      })
      this.dataSource = new MatTableDataSource<ClientDetails>(this.clientsWithProfile);
      this.dataSource.paginator = this.paginator;
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

    if (this.dataSource.paginator) {
      this.dataSource.paginator.firstPage();
    }
  }

compare(c1 : ClientDetails, c2: ClientDetails){
  if (c1.priorityPoints > c2.priorityPoints) {
    return -1;
  } else if (c1.priorityPoints < c2.priorityPoints) {
    return 1;
  }
  return 0;
}

calculOfPriorityPoints(){
  
    if (this.firstPriority == "Disease" && this.secondPriority == "Income" && this.thirdPriority == "Criteria"){
      localStorage.setItem(this.key, "Disease - Income - Criteria");
      this.clientService.getPriorityPointsPerClientsDiseaseIncomeCriteria().subscribe();
    } else if (this.firstPriority == "Disease" && this.secondPriority == "Criteria" && this.thirdPriority == "Income"){
      localStorage.setItem(this.key, "Disease - Criteria - Income");
      this.clientService.getPriorityPointsPerClientsDiseaseCriteriaIncome().subscribe();
    } else if (this.firstPriority == "Criteria" && this.secondPriority == "Disease" && this.thirdPriority == "Income"){
      localStorage.setItem(this.key, "Criteria - Disease - Income");
      this.clientService.getPriorityPointsPerClientsCriteriaDiseaseIncome().subscribe();
    } else if (this.firstPriority == "Criteria" && this.secondPriority == "Income" && this.thirdPriority == "Disease"){
      localStorage.setItem(this.key, "Criteria - Income - Disease");
      this.clientService.getPriorityPointsPerClientsCriteriaIncomeDisease().subscribe();
    } else if (this.firstPriority == "Income" && this.secondPriority == "Criteria" && this.thirdPriority == "Disease"){
      localStorage.setItem(this.key, "Income - Criteria - Disease");
      this.clientService.getPriorityPointsPerClientsIncomeCriteriaDisease().subscribe();
    } else if (this.firstPriority == "Income" && this.secondPriority == "Disease" && this.thirdPriority == "Criteria"){
      localStorage.setItem(this.key, "Income - Disease - Criteria");
      this.clientService.getPriorityPointsPerClientsIncomeDiseaseCriteria().subscribe();
    }
    this.refresh();

    //this.testTri();
    
  }

  getFirstField(){

    let listToDisplay: any[] = [];
    let incomeSelect = null;
    let diseaseSelect = null;
    let criteriaSelect = null;

    if (this.secondPriority == this.incomeSearch || this.thirdPriority == this.incomeSearch){
      incomeSelect = 1;
    }
    if (this.secondPriority == this.diseaseSearch || this.thirdPriority == this.diseaseSearch){
      diseaseSelect = 1;
    }
    if (this.secondPriority == this.criteriaSearch || this.thirdPriority == this.criteriaSearch){
      criteriaSelect = 1;
    }

    if (incomeSelect == null){
      listToDisplay.push(this.incomeSearch);
    }
    if (diseaseSelect == null){
      listToDisplay.push(this.diseaseSearch);
    }

    if (criteriaSelect == null){
      listToDisplay.push(this.criteriaSearch);
    }
    return listToDisplay;
  }

  getSecondField(){
    let listToDisplay: any[] = [];
    let incomeSelect = null;
    let diseaseSelect = null;
    let criteriaSelect = null;

    if (this.firstPriority == this.incomeSearch || this.thirdPriority == this.incomeSearch){
      incomeSelect = 1;
    }
    if (this.firstPriority == this.diseaseSearch || this.thirdPriority == this.diseaseSearch){
      diseaseSelect = 1;
    }
    if (this.firstPriority == this.criteriaSearch || this.thirdPriority == this.criteriaSearch){
      criteriaSelect = 1;
    }

    if (incomeSelect == null){
      listToDisplay.push(this.incomeSearch);
    }
    if (diseaseSelect == null){
      listToDisplay.push(this.diseaseSearch);
    }

    if (criteriaSelect == null){
      listToDisplay.push(this.criteriaSearch);
    }
    return listToDisplay;
  }

  getThirdField(){
    let listToDisplay: any[] = [];
    let incomeSelect = null;
    let diseaseSelect = null;
    let criteriaSelect = null;

    if (this.firstPriority == this.incomeSearch || this.secondPriority == this.incomeSearch){
      incomeSelect = 1;
    }
    if (this.firstPriority == this.diseaseSearch || this.secondPriority == this.diseaseSearch){
      diseaseSelect = 1;
    }
    if (this.firstPriority == this.criteriaSearch || this.secondPriority == this.criteriaSearch){
      criteriaSelect = 1;
    }

    if (incomeSelect == null){
      listToDisplay.push(this.incomeSearch);
    }
    if (diseaseSelect == null){
      listToDisplay.push(this.diseaseSearch);
    }

    if (criteriaSelect == null){
      listToDisplay.push(this.criteriaSearch);
    }
    return listToDisplay;
  }

  getSortedClientsList(clientDetails: Array<ClientDetails>){
    this.clientService.sortedClientDetailsList(this.clientsDetails).subscribe((a: any) => {
      this.clientsDetails = a;
    });
  }


  testTri(){
    this.clientsDetails.sort((c1, c2) => this.compare(c1, c2));
    this.clientsWithProfile = this.clientsDetails.filter(function (client) {
      return client.firstName != null;
    })
    this.dataSource = new MatTableDataSource<ClientDetails>(this.clientsWithProfile);
  }





}
