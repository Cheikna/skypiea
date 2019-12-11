import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { TemperatureControllerDetailsComponent } from './temperature-controller-details.component';

describe('TemperatureControllerDetailsComponent', () => {
  let component: TemperatureControllerDetailsComponent;
  let fixture: ComponentFixture<TemperatureControllerDetailsComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ TemperatureControllerDetailsComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(TemperatureControllerDetailsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
