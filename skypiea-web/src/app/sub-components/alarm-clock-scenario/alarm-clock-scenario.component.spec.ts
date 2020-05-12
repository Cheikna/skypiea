import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AlarmClockScenarioComponent } from './alarm-clock-scenario.component';

describe('AlarmClockScenarioComponent', () => {
  let component: AlarmClockScenarioComponent;
  let fixture: ComponentFixture<AlarmClockScenarioComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AlarmClockScenarioComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AlarmClockScenarioComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
