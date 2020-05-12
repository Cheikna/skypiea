import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ObjectScenarioConfigComponent } from './object-scenario-config.component';

describe('ObjectScenarioConfigComponent', () => {
  let component: ObjectScenarioConfigComponent;
  let fixture: ComponentFixture<ObjectScenarioConfigComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ObjectScenarioConfigComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ObjectScenarioConfigComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
