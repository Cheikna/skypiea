import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AlarmClockDetailsComponent } from './alarm-clock-details.component';

describe('AlarmClockDetailsComponent', () => {
  let component: AlarmClockDetailsComponent;
  let fixture: ComponentFixture<AlarmClockDetailsComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AlarmClockDetailsComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AlarmClockDetailsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
