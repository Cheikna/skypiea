import { TestBed } from '@angular/core/testing';

import { NonMedicalConnectedObjectService } from './non-medical-connected-object.service';

describe('NonMedicalConnectedObjectService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: NonMedicalConnectedObjectService = TestBed.get(NonMedicalConnectedObjectService);
    expect(service).toBeTruthy();
  });
});
