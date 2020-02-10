import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { TemperatureControllerConfigComponent } from './temperature-controller-config.component';

describe('TemepratureControllerConfigComponent', () => {
  let component: TemperatureControllerConfigComponent;
  let fixture: ComponentFixture<TemperatureControllerConfigComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ TemperatureControllerConfigComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(TemperatureControllerConfigComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
