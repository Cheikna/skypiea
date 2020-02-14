import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { SunshineSensorConfigComponent } from './sunshine-sensor-config.component';

describe('SunshineSensorConfigComponent', () => {
  let component: SunshineSensorConfigComponent;
  let fixture: ComponentFixture<SunshineSensorConfigComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ SunshineSensorConfigComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(SunshineSensorConfigComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
