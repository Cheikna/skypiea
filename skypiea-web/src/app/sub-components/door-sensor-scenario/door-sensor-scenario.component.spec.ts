import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { DoorSensorScenarioComponent } from './door-sensor-scenario.component';

describe('DoorSensorScenarioComponent', () => {
  let component: DoorSensorScenarioComponent;
  let fixture: ComponentFixture<DoorSensorScenarioComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ DoorSensorScenarioComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(DoorSensorScenarioComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
