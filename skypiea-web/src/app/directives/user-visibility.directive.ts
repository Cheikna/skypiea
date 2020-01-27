import { Directive, ViewContainerRef, TemplateRef, Input } from '@angular/core';
import { WebStorageService } from '../util/web-storage.service';
import { UserType } from '../enums/userType.enum';

@Directive({
  selector: '[appUserVisibility]'
})
export class UserVisibilityDirective {

  constructor(private container: ViewContainerRef, private template: TemplateRef<any>, private webStorageService: WebStorageService) { }

  @Input() set appUserVisibility(values: string[]) {    
    // Retrieving user type (=role)
    const connectedUserType: string = this.webStorageService.getConnectedUserType();
    // Checking if the user (connected or not) has the necessary role
    if (values.includes(connectedUserType)) {
      // Display the link if the user has the necessary role
      this.container.createEmbeddedView(this.template);
    }
  }

}
