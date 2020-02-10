import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ObjectConfigurationGroupe2Component } from './object-configuration-groupe2.component';

describe('ObjectConfigurationGroupe2Component', () => {
  let component: ObjectConfigurationGroupe2Component;
  let fixture: ComponentFixture<ObjectConfigurationGroupe2Component>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ObjectConfigurationGroupe2Component ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ObjectConfigurationGroupe2Component);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
