import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ObjectMonitoringExtraInfoComponent } from './object-monitoring-extra-info.component';

describe('ObjectMonitoringExtraInfoComponent', () => {
  let component: ObjectMonitoringExtraInfoComponent;
  let fixture: ComponentFixture<ObjectMonitoringExtraInfoComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ObjectMonitoringExtraInfoComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ObjectMonitoringExtraInfoComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
