import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { HomeComponent } from './components/home/home.component';
import { MonitoringComponent } from './components/monitoring/monitoring.component';
import { RoomInformationComponent } from './components/room-information/room-information.component';
import { TrackingComponent } from './components/tracking/tracking.component';
import { TracklistCharactersComponent } from './components/tracklist-characters/tracklist-characters.component';
import { PersonnalFormComponent } from './components/personnal-form/personnal-form.component';
import { PageNotFoundComponent } from './components/page-not-found/page-not-found.component';
import { AuthenticationGuard } from './guards/authentication.guard';
import { DynamicFormComponent } from './components/dynamic-form/dynamic-form.component';
import { DiseaseFormComponent } from './sub-components/disease-form/disease-form.component';

import { ObjectIhmComponent } from './components/object-ihm/object-ihm.component';
import { ObjectConfigurationGroupe1Component } from './sub-components/object-configuration-groupe1/object-configuration-groupe1.component';



import { AnalysisComponent } from './components/analysis/analysis.component';
import { EventHistoryComponent } from './components/event-history/event-history.component';
import { HealthControlComponent } from "./components/health-control/health-control.component";
import { AlarmClockConfigComponent } from './components/alarm-clock-config/alarm-clock-config.component';
import { BulbConfigComponent } from './components/bulb-config/bulb-config.component';
import { DoorSensorConfigComponent } from './components/door-sensor-config/door-sensor-config.component';
import { ShutterConfigComponent } from './components/shutter-config/shutter-config.component';
import { TemperatureControllerConfigComponent } from './components/temperature-controller-config/temperature-controller-config.component';
import { SmokeSensorConfigComponent } from './components/smoke-sensor-config/smoke-sensor-config.component';
import { SunshineSensorConfigComponent } from './components/sunshine-sensor-config/sunshine-sensor-config.component';
import { ObjectsMapComponent } from './components/objects-map/objects-map.component';
import { ObjectScenarioConfigComponent } from './components/object-scenario-config/object-scenario-config.component';
import { MultiObjectScenarioConfigComponent } from './components/multi-object-scenario-config/multi-object-scenario-config.component';

import { HobbiesFormComponent } from './components/hobbies-form/hobbies-form.component';
import { WaitingClientComponent } from './components/waiting-client/waiting-client.component';
import { MailBoxStaffComponent } from './components/mail-box-staff/mail-box-staff.component';32	
import { MailBoxResidentComponent } from './components/mail-box-resident/mail-box-resident.component';
import { ScenarioListComponent } from './components/scenario-list/scenario-list.component';
const routes: Routes = [
  {
    path: '',
    component: HomeComponent
  },
  {
    path: 'ObjectIhm',
    component: ObjectIhmComponent,
    canActivate: [AuthenticationGuard],
    data: {
      userType: 'RESIDENT'
    }
  },
  {
    path: 'ScenarioList',
    component: ScenarioListComponent,
    canActivate: [AuthenticationGuard],
    data: {
      userType: 'RESIDENT'
    }
  },
  
  {
    path: 'object-scenario-config',
    component: ObjectScenarioConfigComponent, 
    canActivate: [AuthenticationGuard], 
    data: { 
      userType: 'RESIDENT'
    }
  },
  {
    path: 'multi-object-scenario-config',
    component: MultiObjectScenarioConfigComponent, 
    canActivate: [AuthenticationGuard], 
    data: { 
      userType: 'RESIDENT'
    }
  },
  {
    path: 'objects-map',
    component: ObjectsMapComponent, 
    canActivate: [AuthenticationGuard], 
    data: { 
      userType: 'RESIDENT'
    }
  },
  {
    path: 'monitoring',
    component: MonitoringComponent,
    canActivate: [AuthenticationGuard],
    data: {
      userType: 'STAFF'
    }
  },
  {
    path: 'monitoring/room/:doorNumber',
    component: RoomInformationComponent,
    canActivate: [AuthenticationGuard],
    data: {
      userType: 'STAFF'
    }
  },
  {
    path: 'personnalForm',
    component: PersonnalFormComponent,
    canActivate: [AuthenticationGuard],
    data: {
      userType: 'NOT_CONNECTED'
    }
  },
  {
    path: 'tracking',
    component: TrackingComponent,
    canActivate: [AuthenticationGuard],
    data: {
      userType: 'STAFF'
    }
  },
  {
    path: 'tracking/:id',
    component: TrackingComponent,
    canActivate: [AuthenticationGuard],
    data: {
      userType: 'STAFF'
    }
  },
  {
    path: 'tracklist',
    component: TracklistCharactersComponent,
    canActivate: [AuthenticationGuard],
    data: {
      userType: 'STAFF'
    }
  },
  {
    path: 'analysis',
    component: AnalysisComponent,
    canActivate: [AuthenticationGuard],
    data: {
      userType: 'STAFF'
    }
  },
  {
    path: 'dynamicForm',
    component: DynamicFormComponent,
    canActivate: [AuthenticationGuard],
    data: {
      userType: 'NOT_CONNECTED'
    }
  },
  {
    path: 'monitoring/event-history',
    component: EventHistoryComponent,
    canActivate: [AuthenticationGuard],
    data: {
      userType: 'STAFF'
    }
  },
  {
    path: 'health-control',
    component: HealthControlComponent,
    canActivate: [AuthenticationGuard],
    data: {
      userType: 'STAFF'
    }
  },
  {
    path: 'object-list/alarm-clock',
    component: AlarmClockConfigComponent,
    canActivate: [AuthenticationGuard],
    data: {
      userType: 'RESIDENT'
    }
  },
  {
    path: 'object-list/bulb',
    component: BulbConfigComponent,
    canActivate: [AuthenticationGuard],
    data: {
      userType: 'RESIDENT'
    }
  },
  {
    path: 'object-list/door-sensor',
    component: DoorSensorConfigComponent,
    canActivate: [AuthenticationGuard],
    data: {
      userType: 'RESIDENT'
    }
  },
  {
    path: 'object-list/alarm-clock',
    component: AlarmClockConfigComponent,
    canActivate: [AuthenticationGuard],
    data: {
      userType: 'RESIDENT'
    }
  },
  {
    path: 'object-list/bulb',
    component: BulbConfigComponent,
    canActivate: [AuthenticationGuard],
    data: {
      userType: 'RESIDENT'
    }
  },
  {
    path: 'object-list/door-sensor',
    component: DoorSensorConfigComponent,
    canActivate: [AuthenticationGuard],
    data: {
      userType: 'RESIDENT'
    }
  },
  {
    path: 'monitoring/event-history',
    component: EventHistoryComponent,
    canActivate: [AuthenticationGuard],
    data: {
      userType: 'STAFF'
    }
  },
  {
    path: 'health-control',
    component: HealthControlComponent,
    canActivate: [AuthenticationGuard],
    data: {
      userType: 'STAFF'
    }
  },
  {
    path: 'object-list/shutter',
    component: ShutterConfigComponent,
    canActivate: [AuthenticationGuard],
    data: {
      userType: 'RESIDENT'
    }
  },
  {
    path: 'object-list/temperature-controller',
    component: TemperatureControllerConfigComponent,
    canActivate: [AuthenticationGuard],
    data: {
      userType: 'RESIDENT'
    }
  },
  {
    path: 'object-list/smoke-sensor',
    component: SmokeSensorConfigComponent,
    canActivate: [AuthenticationGuard],
    data: {
      userType: 'RESIDENT'
    }
  },
  {
    path: 'object-list/sunshine-sensor',
    component: SunshineSensorConfigComponent,
    canActivate: [AuthenticationGuard],
    data: {
      userType: 'RESIDENT'
    }
  },
  {
    path: 'diseaseForm',
    component: DiseaseFormComponent,
    canActivate: [AuthenticationGuard],
    data: {
      userType: 'NOT_CONNECTED'
    }
  },  
  {
    path: 'hobbiesForm',
    component: HobbiesFormComponent,
    canActivate: [AuthenticationGuard],
    data: {
      userType: 'NOT_CONNECTED'
    }
  },
  {
    path: 'waitingClient',
    component: WaitingClientComponent,
    canActivate: [AuthenticationGuard],
    data: {
      userType: 'STAFF'
    }
  },
  {
    path: 'mail-box/staff',
    component: MailBoxStaffComponent,
    canActivate: [AuthenticationGuard],
    data: {
      userType: 'STAFF'
    }
  },
  {
    path: 'mail-box/resident',
    component: MailBoxResidentComponent,
    canActivate: [AuthenticationGuard],
    data: {
      userType: 'RESIDENT'
    }
  },
  {
    path: '**',
    component: PageNotFoundComponent
  }
];
// The line {path: '**', component: PageNotFoundComponent} MUST BE the LAST route
@NgModule({
  imports: [RouterModule.forRoot(routes, {onSameUrlNavigation: 'reload'})],
  exports: [RouterModule]
})
export class AppRoutingModule { }
