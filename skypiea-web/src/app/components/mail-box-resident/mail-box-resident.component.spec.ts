import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { MailBoxResidentComponent } from './mail-box-resident.component';

describe('MailBoxResidentComponent', () => {
  let component: MailBoxResidentComponent;
  let fixture: ComponentFixture<MailBoxResidentComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ MailBoxResidentComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(MailBoxResidentComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
