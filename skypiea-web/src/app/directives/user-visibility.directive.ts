import { Directive, ViewContainerRef, TemplateRef, Input } from '@angular/core';
import { WebStorageService } from '../util/web-storage.service';
import { UserType } from '../enums/userType.enum';

@Directive({
  selector: '[appUserVisibility]'
})
export class UserVisibilityDirective {

  userType = UserType;

  constructor(private container: ViewContainerRef, private template: TemplateRef<any>, private webStorageService: WebStorageService) { }

  @Input() set appUserVisibility(values: string[]) {
    const connectedUserType: string = this.webStorageService.getConnectedUserType();
    if (values.includes('NOT_CONNECTED') && (connectedUserType == null) 
     || values.includes('RESIDENT') && (connectedUserType == UserType.RESIDENT)
     || values.includes('STAFF') && (connectedUserType == UserType.STAFF)) {
      this.container.createEmbeddedView(this.template);
    }
  }

}
