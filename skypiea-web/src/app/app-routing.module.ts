import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { HomeComponent } from './components/home/home.component';
import { ObjectListComponent } from './components/ObjectList/ObjectList.component';
import { MonitoringComponent } from './components/monitoring/monitoring.component';
import { RoomInformationComponent } from './components/room-information/room-information.component';
import { TrackingComponent } from './components/tracking/tracking.component';
import { TracklistCharactersComponent } from './components/tracklist-characters/tracklist-characters.component';
import { PersonnalFormComponent } from './components/personnal-form/personnal-form.component';
import { PageNotFoundComponent } from './components/page-not-found/page-not-found.component';
import { AuthenticationGuard } from './guards/authentication.guard';
import { DynamicFormComponent } from './components/dynamic-form/dynamic-form.component';
import { EventHistoryComponent } from './components/event-history/event-history.component';
import { AnalysisComponent } from './components/analysis/analysis.component';

const routes: Routes = [
  {
    path: '',
    component: HomeComponent
  },
  {
    path: 'ObjectList',
    component: ObjectListComponent, 
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
