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
import { SignInComponent } from './dialogs/sign-in/sign-in.component';
import { ToastrModule } from 'ngx-toastr';
import { TrackingComponent } from './components/tracking/tracking.component';
import { TracklistCharactersComponent } from './components/tracklist-characters/tracklist-characters.component';
import { PersonnalFormComponent } from './components/personnal-form/personnal-form.component';
import {FlexLayoutModule} from "@angular/flex-layout";

import { RoomPlanComponent } from './sub-components/room-plan/room-plan.component';
import { RoomSummaryComponent } from './sub-components/room-summary/room-summary.component';
import { RoomInformationComponent } from './components/room-information/room-information.component';
import { MonitoringComponent } from './components/monitoring/monitoring.component';
import { ObjectInfoComponent } from './dialogs/object-info/object-info.component';
import { PageNotFoundComponent } from './components/page-not-found/page-not-found.component';
import { UserVisibilityDirective } from './directives/user-visibility.directive';
import { FloorOnePlanComponent } from './floors-plan-components/floor-one-plan/floor-one-plan.component';
import { DynamicFormComponent } from './components/dynamic-form/dynamic-form.component';

import { AnalysisComponent } from './components/analysis/analysis.component';
import { DiseaseFormComponent } from './sub-components/disease-form/disease-form.component';
import { ObjectMonitoringInfoComponent } from './sub-components/object-monitoring-info/object-monitoring-info.component';
import { ObjectMonitoringExtraInfoComponent } from './dialogs/object-monitoring-extra-info/object-monitoring-extra-info.component';
import { FloorPlanComponent } from './sub-components/floor-plan/floor-plan.component';
import { EventHistoryComponent } from './components/event-history/event-history.component';
import { HealthControlComponent } from './components/health-control/health-control.component';
import { ObjectIhmComponent } from './components/object-ihm/object-ihm.component';
import { ObjectConfigurationGroupe1Component } from './sub-components/object-configuration-groupe1/object-configuration-groupe1.component';
import { FailuresViewComponent } from './sub-components/failures-view/failures-view.component';

import { AlarmClockConfigComponent } from './components/alarm-clock-config/alarm-clock-config.component';
import { BulbConfigComponent } from './components/bulb-config/bulb-config.component';
import { DoorSensorConfigComponent } from './components/door-sensor-config/door-sensor-config.component';
import { ObjectConfigurationGroupe2Component } from './sub-components/object-configuration-groupe2/object-configuration-groupe2.component';
import { ShutterConfigComponent } from './components/shutter-config/shutter-config.component';
import { TemperatureControllerConfigComponent } from './components/temperature-controller-config/temperature-controller-config.component';
import { SmokeSensorConfigComponent } from './components/smoke-sensor-config/smoke-sensor-config.component';
import { SunshineSensorConfigComponent } from './components/sunshine-sensor-config/sunshine-sensor-config.component';

import 'hammerjs';


@NgModule({
  entryComponents: [
    SignInComponent,
    ObjectInfoComponent,
    ObjectMonitoringExtraInfoComponent
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
    TrackingComponent,
    TracklistCharactersComponent,
    PersonnalFormComponent,
    ObjectInfoComponent,
    PageNotFoundComponent,
    UserVisibilityDirective,
    PersonnalFormComponent,
    FloorOnePlanComponent,
    DynamicFormComponent,
    AnalysisComponent,
    DiseaseFormComponent,
    ObjectMonitoringInfoComponent,
    ObjectMonitoringExtraInfoComponent,
    FloorPlanComponent,
    EventHistoryComponent,
    AnalysisComponent,
    HealthControlComponent,
    ObjectIhmComponent,
    ObjectConfigurationGroupe1Component,
    AlarmClockConfigComponent,
    BulbConfigComponent,
    DoorSensorConfigComponent,
    ObjectConfigurationGroupe2Component,
    ShutterConfigComponent,
    TemperatureControllerConfigComponent,
    SmokeSensorConfigComponent,
    SunshineSensorConfigComponent,
    FailuresViewComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    BrowserAnimationsModule,
    AngularMaterialModule,
    HttpClientModule,
    FormsModule,
    FlexLayoutModule,
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
