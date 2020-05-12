import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { SmokeSensorScenarioComponent } from './smoke-sensor-scenario.component';

describe('SmokeSensorScenarioComponent', () => {
  let component: SmokeSensorScenarioComponent;
  let fixture: ComponentFixture<SmokeSensorScenarioComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ SmokeSensorScenarioComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(SmokeSensorScenarioComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
