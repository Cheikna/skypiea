import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { HomeComponent } from './components/home/home.component';
import { TrainingComponent } from './components/training/training.component';
import { TrackingComponent } from './components/tracking/tracking.component';


const routes: Routes = [
  {path: '', component: HomeComponent},
  {path: 'training', component: TrainingComponent},
  {path: 'tracking', component: TrackingComponent}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
