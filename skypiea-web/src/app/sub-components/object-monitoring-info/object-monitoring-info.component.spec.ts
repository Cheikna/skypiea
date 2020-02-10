import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ObjectMonitoringInfoComponent } from './object-monitoring-info.component';

describe('ObjectMonitoringInfoComponent', () => {
  let component: ObjectMonitoringInfoComponent;
  let fixture: ComponentFixture<ObjectMonitoringInfoComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ObjectMonitoringInfoComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ObjectMonitoringInfoComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
