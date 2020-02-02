import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ObjectIhmComponent } from './object-ihm.component';

describe('ObjectIhmComponent', () => {
  let component: ObjectIhmComponent;
  let fixture: ComponentFixture<ObjectIhmComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ObjectIhmComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ObjectIhmComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
