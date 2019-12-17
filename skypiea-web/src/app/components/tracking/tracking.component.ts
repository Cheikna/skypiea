import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-tracking',
  templateUrl: './tracking.component.html',
  styleUrls: ['./tracking.component.scss']
})
export class TrackingComponent implements OnInit {

  // TODO Guillaume : creer un objet de type ElectronicTag

  // TODO Guillaume : déclarer dans le constructeur le service qui permettra de faire appel au controller ElectronicTag
  constructor() { }

  ngOnInit() {
    // TODO Guillaume : Récupérer l'id en paramètre de l'url et vérifier qu'il n'est pas null

    // TODO Guillaume : appeler la méthode du service, déclaré dans le constructeur permettant de récupérer l'ElectronicTag d'un résident

    // TODO Guillaume : Afficher les données récupérées à l'aide de =>  console.log(JSON.stringify(data))

  }

}
