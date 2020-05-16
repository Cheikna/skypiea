import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { BulbScenarioComponent } from './bulb-scenario.component';

describe('BulbScenarioComponent', () => {
  let component: BulbScenarioComponent;
  let fixture: ComponentFixture<BulbScenarioComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ BulbScenarioComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(BulbScenarioComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
