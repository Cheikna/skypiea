import { TestBed } from '@angular/core/testing';

import { ClientService } from './client.service';

describe('ResidentService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: ClientService = TestBed.get(ClientService);
    expect(service).toBeTruthy();
  });
});
