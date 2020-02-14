import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { BulbConfigComponent } from './bulb-config.component';

describe('BulbConfigComponent', () => {
  let component: BulbConfigComponent;
  let fixture: ComponentFixture<BulbConfigComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ BulbConfigComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(BulbConfigComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
