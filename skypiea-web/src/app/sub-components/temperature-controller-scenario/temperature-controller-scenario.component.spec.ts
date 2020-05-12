import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { TemperatureControllerScenarioComponent } from './temperature-controller-scenario.component';

describe('TemperatureControllerScenarioComponent', () => {
  let component: TemperatureControllerScenarioComponent;
  let fixture: ComponentFixture<TemperatureControllerScenarioComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ TemperatureControllerScenarioComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(TemperatureControllerScenarioComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
