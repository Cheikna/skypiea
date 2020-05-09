import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { MailsListComponent } from './mails-list.component';

describe('MailsListComponent', () => {
  let component: MailsListComponent;
  let fixture: ComponentFixture<MailsListComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ MailsListComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(MailsListComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
