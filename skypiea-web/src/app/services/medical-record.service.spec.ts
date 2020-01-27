import { TestBed } from '@angular/core/testing';

import { MedicalRecordService } from './medical-record.service';

describe('MedicalRecordService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: MedicalRecordService = TestBed.get(MedicalRecordService);
    expect(service).toBeTruthy();
  });
});
