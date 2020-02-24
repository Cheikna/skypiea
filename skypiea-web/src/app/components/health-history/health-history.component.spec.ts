import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { HealthHistoryComponent } from './health-history.component';

describe('HealthHistoryComponent', () => {
  let component: HealthHistoryComponent;
  let fixture: ComponentFixture<HealthHistoryComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ HealthHistoryComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(HealthHistoryComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
