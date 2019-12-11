import { TestBed } from '@angular/core/testing';

import { TemperatureControllerService } from './temperature-controller.service';

describe('TemperatureControllerService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: TemperatureControllerService = TestBed.get(TemperatureControllerService);
    expect(service).toBeTruthy();
  });
});
