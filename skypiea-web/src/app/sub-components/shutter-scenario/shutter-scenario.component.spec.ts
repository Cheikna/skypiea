import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ShutterScenarioComponent } from './shutter-scenario.component';

describe('ShutterScenarioComponent', () => {
  let component: ShutterScenarioComponent;
  let fixture: ComponentFixture<ShutterScenarioComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ShutterScenarioComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ShutterScenarioComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
