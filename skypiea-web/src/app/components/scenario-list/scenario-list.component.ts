import { Component, OnInit } from '@angular/core';
import { Resident } from 'src/app/models/resident.model';
import { Room } from 'src/app/models/room.model';
import { RoomService } from 'src/app/services/room.service';
import { WebStorageService } from 'src/app/util/web-storage.service';
import { TemperatureControllerScenarioService } from 'src/app/services/temperature-controller-scenario.service';
import { State } from 'src/app/enums/state.enum';
import { storageKey } from 'src/app/util/storageKey.util';
import { TemperatureControllerScenario } from 'src/app/models/temperatureControllerScenario.model';
import { ShutterScenarioService } from 'src/app/services/shutter-scenario.service';
import { ShutterScenario } from 'src/app/models/shutterScenario.model';
import { AlarmClockScenarioService } from 'src/app/services/alarm-clock-scenario.service';
import { AlarmClockScenario } from 'src/app/models/alarmClockScenario.model';
import { BulbScenarioService } from 'src/app/services/bulb-scenario.service';
import { BulbScenario } from 'src/app/models/bulbScenario.model';



@Component({
  selector: 'app-scenario-list',
  templateUrl: './scenario-list.component.html',
  styleUrls: ['./scenario-list.component.scss']
})
export class ScenarioListComponent implements OnInit {

  temperatureControllerScenarioList: Array<any>;
  scenarioList: ScenarioListComponent;
  shutterScenarioList: Array<any>
  alarmClockScenarioList: Array<any>; 
  bulbScenarioList: Array<any>;
  resident: Resident;
  room: Room;
  delete: boolean;

  constructor(private roomService: RoomService, private webStorageService: WebStorageService, private temperatureControllerScenarioService: TemperatureControllerScenarioService, private shutterScenarioService: ShutterScenarioService, private alarmClockScenarioService: AlarmClockScenarioService, private bulbScenarioService: BulbScenarioService) {
    this.room = new Room();
    this.room.state = State.OPERATIONAL;
    this.temperatureControllerScenarioList = new Array<string>();
  }

  ngOnInit() {
    this.resident = this.webStorageService.getSessionAttribute(storageKey.USER_INFO.name);
    this.roomService.getResidentRoomDetails(this.resident.id).subscribe((data: Room) => {
      this.room = data;
      this.temperatureControllerScenarioService.getTemperatureControllerScenario(this.room.id).subscribe((data: Array<TemperatureControllerScenario>) => {
        this.temperatureControllerScenarioList = data;
      });
      this.shutterScenarioService.getShutterScenario(this.room.id).subscribe((data: Array<ShutterScenario>) => {
        this.shutterScenarioList = data;
      });
      this.alarmClockScenarioService.getAlarmClockScenario(this.room.id).subscribe((data: Array<AlarmClockScenario>) => {
        this.alarmClockScenarioList = data;
      });
      this.bulbScenarioService.getBulbScenario(this.room.id).subscribe((data: Array<BulbScenario>) => {
        this.bulbScenarioList = data;
      });
    });
  }

  deleteTemperatureController(id: number) {
    this.temperatureControllerScenarioService.delete(id).subscribe((data: boolean) => {
      this.delete = data;
      console.log(data);
      window.location.reload();
    });
  }

  deleteShutter(id: number) {
    this.shutterScenarioService.delete(id).subscribe((data: boolean) => {
      this.delete = data;
      console.log(data);
      window.location.reload();
    });
  }

  deleteAlarmClock(id: number) {
    this.alarmClockScenarioService.delete(id).subscribe((data: boolean) => {
      this.delete = data;
      console.log(data);
      window.location.reload();
    });
  }

  deleteBulb(id: number) {
    this.bulbScenarioService.delete(id).subscribe((data: boolean) => {
      this.delete = data;
      console.log(data);
      window.location.reload();
    });
  }

}
