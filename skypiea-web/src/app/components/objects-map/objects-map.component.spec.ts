import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ObjectsMapComponent } from './objects-map.component';

describe('ObjectsMapComponent', () => {
  let component: ObjectsMapComponent;
  let fixture: ComponentFixture<ObjectsMapComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ObjectsMapComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ObjectsMapComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
