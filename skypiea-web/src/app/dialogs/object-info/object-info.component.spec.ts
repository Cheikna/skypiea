import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ObjectInfoComponent } from './object-info.component';

describe('ObjectInfoComponent', () => {
  let component: ObjectInfoComponent;
  let fixture: ComponentFixture<ObjectInfoComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ObjectInfoComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ObjectInfoComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
