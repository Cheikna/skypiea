import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { FloorOnePlanComponent } from './floor-one-plan.component';

describe('FloorOnePlanComponent', () => {
  let component: FloorOnePlanComponent;
  let fixture: ComponentFixture<FloorOnePlanComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ FloorOnePlanComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(FloorOnePlanComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
