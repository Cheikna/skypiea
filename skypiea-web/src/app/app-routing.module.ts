import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { HomeComponent } from './components/home/home.component';
import { ObjectListComponent } from './components/ObjectList/ObjectList.component';
import { MonitoringComponent } from './components/monitoring/monitoring.component';
import { RoomInformationComponent } from './components/room-information/room-information.component';
import { PersonnalFormComponent } from './components/personnal-form/personnal-form.component';
import { PageNotFoundComponent } from './components/page-not-found/page-not-found.component';
import { AuthenticationGuard } from './guards/authentication.guard';


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
    path: 'monitoring/room/:roomId',
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
