import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { WaitingClientComponent } from './waiting-client.component';

describe('WaitingClientComponent', () => {
  let component: WaitingClientComponent;
  let fixture: ComponentFixture<WaitingClientComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ WaitingClientComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(WaitingClientComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
