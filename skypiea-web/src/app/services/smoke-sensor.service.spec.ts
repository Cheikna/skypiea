import { TestBed } from '@angular/core/testing';

import { SmokeSensorService } from './smoke-sensor.service';

describe('SmokeSensorService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: SmokeSensorService = TestBed.get(SmokeSensorService);
    expect(service).toBeTruthy();
  });
});
