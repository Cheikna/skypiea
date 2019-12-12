import { TestBed } from '@angular/core/testing';

import { ShutterService } from './shutter.service';

describe('SmokeSensorService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: ShutterService = TestBed.get(ShutterService);
    expect(service).toBeTruthy();
  });
});
