import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { FailuresViewComponent } from './failures-view.component';

describe('FailuresViewComponent', () => {
  let component: FailuresViewComponent;
  let fixture: ComponentFixture<FailuresViewComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ FailuresViewComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(FailuresViewComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
