import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { DoorSensorConfigComponent } from './door-sensor-config.component';

describe('DoorSensorConfigComponent', () => {
  let component: DoorSensorConfigComponent;
  let fixture: ComponentFixture<DoorSensorConfigComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ DoorSensorConfigComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(DoorSensorConfigComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
