import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ObjectSettingsEventsHistoryComponent } from './object-settings-events-history.component';

describe('ObjectSettingsEventsHistoryComponent', () => {
  let component: ObjectSettingsEventsHistoryComponent;
  let fixture: ComponentFixture<ObjectSettingsEventsHistoryComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ObjectSettingsEventsHistoryComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ObjectSettingsEventsHistoryComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
