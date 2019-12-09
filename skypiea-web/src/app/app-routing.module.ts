import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { HomeComponent } from './components/home/home.component';
import { TrainingComponent } from './components/training/training.component';
import { ObjectListComponent } from './components/ObjectList/ObjectList.component';



const routes: Routes = [
  {path: '', component: HomeComponent},
  {path: 'training', component: TrainingComponent},
  {path: 'ObjectList', component: ObjectListComponent}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
