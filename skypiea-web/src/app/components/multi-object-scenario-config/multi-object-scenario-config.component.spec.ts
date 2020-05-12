import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { MultiObjectScenarioConfigComponent } from './multi-object-scenario-config.component';

describe('MultiObjectScenarioConfigComponent', () => {
  let component: MultiObjectScenarioConfigComponent;
  let fixture: ComponentFixture<MultiObjectScenarioConfigComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ MultiObjectScenarioConfigComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(MultiObjectScenarioConfigComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
