import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { HomeComponent } from './components/home/home.component';
import { MonitoringComponent } from './components/monitoring/monitoring.component';
import { RoomInformationComponent } from './components/room-information/room-information.component';
import { ObjectListComponent } from './components/ObjectList/ObjectList.component';



const routes: Routes = [
  {path: '', component: HomeComponent},
  {path: 'monitoring', component: MonitoringComponent},
  {path: 'monitoring/room/:roomId', component: RoomInformationComponent},
  {path: 'ObjectList', component: ObjectListComponent}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
