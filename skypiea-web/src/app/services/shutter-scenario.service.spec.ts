import { TestBed } from '@angular/core/testing';
import { ShutterScenarioService } from './shutter-scenario.service';


describe('ShutterScenarioService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: ShutterScenarioService = TestBed.get(ShutterScenarioService);
    expect(service).toBeTruthy();
  });
});

