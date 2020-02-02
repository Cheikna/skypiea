import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ObjectConfigurationGroupe1Component } from './object-configuration-groupe1.component';

describe('ObjectConfigurationGroupe1Component', () => {
  let component: ObjectConfigurationGroupe1Component;
  let fixture: ComponentFixture<ObjectConfigurationGroupe1Component>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ObjectConfigurationGroupe1Component ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ObjectConfigurationGroupe1Component);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
