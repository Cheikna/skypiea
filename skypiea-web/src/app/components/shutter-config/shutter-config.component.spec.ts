import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ShutterConfigComponent } from './shutter-config.component';

describe('ShutterConfigComponent', () => {
  let component: ShutterConfigComponent;
  let fixture: ComponentFixture<ShutterConfigComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ShutterConfigComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ShutterConfigComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
