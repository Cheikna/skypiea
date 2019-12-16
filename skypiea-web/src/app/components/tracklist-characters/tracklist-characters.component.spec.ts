import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { TracklistCharactersComponent } from './tracklist-characters.component';

describe('TracklistCharactersComponent', () => {
  let component: TracklistCharactersComponent;
  let fixture: ComponentFixture<TracklistCharactersComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ TracklistCharactersComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(TracklistCharactersComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
