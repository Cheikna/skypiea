import { async, ComponentFixture, TestBed } from '@angular/core/testing';

<<<<<<< HEAD:skypiea-web/src/app/components/footer/footer.component.spec.ts
import { FooterComponent } from './footer.component';

describe('FooterComponent', () => {
  let component: FooterComponent;
  let fixture: ComponentFixture<FooterComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ FooterComponent ]
=======
import { MonitoringComponent } from './monitoring.component';

describe('MonitoringComponent', () => {
  let component: MonitoringComponent;
  let fixture: ComponentFixture<MonitoringComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ MonitoringComponent ]
>>>>>>> View of rooms' objects:skypiea-web/src/app/components/monitoring/monitoring.component.spec.ts
    })
    .compileComponents();
  }));

  beforeEach(() => {
<<<<<<< HEAD:skypiea-web/src/app/components/footer/footer.component.spec.ts
    fixture = TestBed.createComponent(FooterComponent);
=======
    fixture = TestBed.createComponent(MonitoringComponent);
>>>>>>> View of rooms' objects:skypiea-web/src/app/components/monitoring/monitoring.component.spec.ts
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
