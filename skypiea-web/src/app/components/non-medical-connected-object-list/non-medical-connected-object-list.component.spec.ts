import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { NonMedicalConnectedObjectListComponent } from './non-medical-connected-object-list.component';

describe('NonMedicalConnectedObjectListComponent', () => {
  let component: NonMedicalConnectedObjectListComponent;
  let fixture: ComponentFixture<NonMedicalConnectedObjectListComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ NonMedicalConnectedObjectListComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(NonMedicalConnectedObjectListComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
