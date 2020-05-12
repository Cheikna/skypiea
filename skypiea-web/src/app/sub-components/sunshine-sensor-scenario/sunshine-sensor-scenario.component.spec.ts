import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { SunshineSensorScenarioComponent } from './sunshine-sensor-scenario.component';

describe('SunshineSensorScenarioComponent', () => {
  let component: SunshineSensorScenarioComponent;
  let fixture: ComponentFixture<SunshineSensorScenarioComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ SunshineSensorScenarioComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(SunshineSensorScenarioComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
