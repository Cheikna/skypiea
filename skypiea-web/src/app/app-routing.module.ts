import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { HomeComponent } from './components/home/home.component';
import { MonitoringComponent } from './components/monitoring/monitoring.component';


const routes: Routes = [
  {path: '', component: HomeComponent},
  {path: 'monitoring', component: MonitoringComponent},
  {path: 'monitoring/room/:id', component: MonitoringComponent},
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
