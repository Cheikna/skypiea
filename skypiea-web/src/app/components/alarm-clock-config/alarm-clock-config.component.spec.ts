import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AlarmClockConfigComponent } from './alarm-clock-config.component';

describe('AlarmClockConfigComponent', () => {
  let component: AlarmClockConfigComponent;
  let fixture: ComponentFixture<AlarmClockConfigComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AlarmClockConfigComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AlarmClockConfigComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
