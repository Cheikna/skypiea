import { TestBed } from '@angular/core/testing';

import { HealthControlService } from './health-control.service';

describe('HealthControlService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: HealthControlService = TestBed.get(HealthControlService);
    expect(service).toBeTruthy();
  });
});
