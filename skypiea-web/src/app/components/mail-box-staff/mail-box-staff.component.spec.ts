import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { MailBoxStaffComponent } from './mail-box-staff.component';

describe('MailBoxStaffComponent', () => {
  let component: MailBoxStaffComponent;
  let fixture: ComponentFixture<MailBoxStaffComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ MailBoxStaffComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(MailBoxStaffComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
