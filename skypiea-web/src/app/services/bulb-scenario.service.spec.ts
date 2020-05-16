import { TestBed } from '@angular/core/testing';

import { BulbScenarioService } from './bulb-scenario.service';

describe('BulbScenarioService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: BulbScenarioService = TestBed.get(BulbScenarioService);
    expect(service).toBeTruthy();
  });
});
