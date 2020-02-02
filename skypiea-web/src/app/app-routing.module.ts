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
import { AnalysisComponent } from './components/analysis/analysis.component';
import { EventHistoryComponent } from './components/event-history/event-history.component';
import {HealthControlComponent} from "./components/health-control/health-control.component";
import { ObjectIhmComponent } from './components/object-ihm/object-ihm.component';
import { ObjectConfigurationGroupe1Component } from './sub-components/object-configuration-groupe1/object-configuration-groupe1.component';
import { AlarmClockComponent } from './components/alarm-clock/alarm-clock.component';
import { BulbComponent} from './components/bulb/bulb.component'; 
import { DoorSensorComponent} from './components/door-sensor/door-sensor.component'; 

import { AlarmClockConfigComponent } from './components/alarm-clock-config/alarm-clock-config.component';
import { BulbConfigComponent} from './components/bulb-config/bulb-config.component'; 
import { DoorSensorConfigComponent} from './components/door-sensor-config/door-sensor-config.component'; 
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
    path: '**',
    component: PageNotFoundComponent
  }
];
// The line {path: '**', component: PageNotFoundComponent} MUST BE the LAST route
@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
