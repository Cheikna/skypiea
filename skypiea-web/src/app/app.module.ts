import { BrowserModule } from '@angular/platform-browser';
import { NgModule, NO_ERRORS_SCHEMA } from '@angular/core';
import { MDBBootstrapModule } from 'angular-bootstrap-md';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { AngularMaterialModule } from './util/angular-material.module';
import { HttpClientModule } from '@angular/common/http';
import { HomeComponent } from './components/home/home.component';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { HeaderComponent } from './components/header/header.component';
import { FooterComponent } from './components/footer/footer.component';
import { SignInComponent } from './components/sign-in/sign-in.component';
import { ToastrModule } from 'ngx-toastr';
import { RoomSummaryComponent } from './sub-components/room-summary/room-summary.component';
import { RoomInformationComponent } from './components/room-information/room-information.component';
import { MonitoringComponent } from './components/monitoring/monitoring.component';
import { RoomPlanComponent } from './sub-components/room-plan/room-plan.component';
import { ObjectListComponent } from './components/ObjectList/ObjectList.component';
import { NonMedicalConnectedObjectListComponent } from './components/non-medical-connected-object-list/non-medical-connected-object-list.component';
import { AlarmClockDetailsComponent } from './components/alarm-clock-details/alarm-clock-details.component';
import { TemperatureControllerDetailsComponent } from './components/temperature-controller-details/temperature-controller-details.component';


@NgModule({
  entryComponents: [
    SignInComponent
  ],
  declarations: [
    AppComponent,
    HomeComponent,
    HeaderComponent,
    FooterComponent,
    SignInComponent,
    RoomSummaryComponent,
    RoomInformationComponent,
    MonitoringComponent,
    RoomPlanComponent,
    ObjectListComponent,
    AlarmClockDetailsComponent,
    NonMedicalConnectedObjectListComponent,
    AlarmClockDetailsComponent,
    TemperatureControllerDetailsComponent,
    RoomSummaryComponent,
    RoomInformationComponent,
    MonitoringComponent,
    RoomPlanComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    BrowserAnimationsModule,
    AngularMaterialModule,
    HttpClientModule,
    FormsModule,
    MDBBootstrapModule.forRoot(),
    ReactiveFormsModule,
    ToastrModule.forRoot({      
    positionClass: 'toast-top-center',
    })
  ],
  schemas: [ NO_ERRORS_SCHEMA ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
