import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { HealthControlComponent } from './health-control.component';

describe('HealthControlComponent', () => {
  let component: HealthControlComponent;
  let fixture: ComponentFixture<HealthControlComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ HealthControlComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(HealthControlComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
