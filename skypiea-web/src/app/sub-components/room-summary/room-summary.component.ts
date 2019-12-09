import { Component, OnInit, Input } from '@angular/core';

@Component({
  selector: 'app-room-summary',
  templateUrl: './room-summary.component.html',
  styleUrls: ['./room-summary.component.scss']
})
export class RoomSummaryComponent implements OnInit {

  @Input() name: string;

  constructor() { }

  ngOnInit() {
  }

}
