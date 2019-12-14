import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { PersonnalFormComponent } from './personnal-form.component';

describe('PersonnalFormComponent', () => {
  let component: PersonnalFormComponent;
  let fixture: ComponentFixture<PersonnalFormComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ PersonnalFormComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(PersonnalFormComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
