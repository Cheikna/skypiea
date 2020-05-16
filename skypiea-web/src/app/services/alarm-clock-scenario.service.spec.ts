import { TestBed } from '@angular/core/testing';

import { AlarmClockScenarioService } from './alarm-clock-scenario.service';

describe('AlarmClockScenarioService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: AlarmClockScenarioService = TestBed.get(AlarmClockScenarioService);
    expect(service).toBeTruthy();
  });
});
