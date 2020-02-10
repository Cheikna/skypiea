import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { SmokeSensorConfigComponent } from './smoke-sensor-config.component';

describe('SmokeSensorConfigComponent', () => {
  let component: SmokeSensorConfigComponent;
  let fixture: ComponentFixture<SmokeSensorConfigComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ SmokeSensorConfigComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(SmokeSensorConfigComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
