import { TestBed } from '@angular/core/testing';
import {TemperatureControllerScenarioService } from './temperature-controller-scenario.service';

describe('TemperatureControllerScenarioService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: TemperatureControllerScenarioService = TestBed.get(TemperatureControllerScenarioService);
    expect(service).toBeTruthy();
  });
});

