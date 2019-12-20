import { Component, OnInit } from '@angular/core';
import { ElectronicTag } from 'src/app/models/electronictag.model';
import { ElectronicTagService } from 'src/app/services/electronictag.service';
import { ActivatedRoute } from '@angular/router';
import { HistoryMoving } from 'src/app/models/historyMoving.model';

@Component({
  selector: 'app-tracking',
  templateUrl: './tracking.component.html',
  styleUrls: ['./tracking.component.scss']
})
export class TrackingComponent implements OnInit {

  movings: Array<HistoryMoving>;
  // TODO Guillaume : creer un objet de type ElectronicTag
  electronicTag: ElectronicTag;
  // TODO Guillaume : déclarer dans le constructeur le service qui permettra de faire appel au controller ElectronicTag
  constructor(private route: ActivatedRoute, private electronicTagService: ElectronicTagService) { 
    this.electronicTagService = electronicTagService;
  }

  ngOnInit() {
    // TODO Guillaume : Récupérer l'id en paramètre de l'url et vérifier qu'il n'est pas null
    let id = this.route.snapshot.paramMap.get('id');
    // TODO Guillaume : appeler la méthode du service, déclaré dans le constructeur permettant de récupérer l'ElectronicTag d'un résident
    this.electronicTagService.getResidentHistoryMoving(parseInt(id)).subscribe((data: ElectronicTag) => {
      this.movings = data.historyMoving;
      /*movings.forEach(move => {
        console.log(move.posX + " " + move.posY);
      });*/
    });
    // TODO Guillaume : Afficher les données récupérées à l'aide de =>  console.log(JSON.stringify(data))
    console.log(JSON.stringify(id));
  }

}
