import { Component, OnInit, ViewChild, OnDestroy } from '@angular/core';
import { NotificationService } from 'src/app/services/notification.service';
import { WebStorageService } from 'src/app/util/web-storage.service';
import { storageKey } from 'src/app/util/storageKey.util';
import { Notification } from 'src/app/models/notification.model';
import { MailsListComponent } from 'src/app/sub-components/mails-list/mails-list.component';

@Component({
  selector: 'app-mail-box-resident',
  templateUrl: './mail-box-resident.component.html',
  styleUrls: ['./mail-box-resident.component.scss']
})
export class MailBoxResidentComponent implements OnInit, OnDestroy {
  @ViewChild('mailsListComponent', { static: false }) mailsListComponent: MailsListComponent;
  residentId: number;
  notifications: Array<Notification>;  
  residentNotificationsInterval;
  readonly notificationUpdateFrequencyInMilliseconds = 15000;

  constructor(private notificationService: NotificationService, private webStorageService: WebStorageService) { 
    const userInfoFromStorage = this.webStorageService.getSessionAttribute(storageKey.USER_INFO.name);
    this.residentId = userInfoFromStorage.id;
  }

  ngOnInit() {
    this.reloadNotifications();
    this.residentNotificationsInterval = setInterval(()=> {
      this.reloadNotifications();
    }, this.notificationUpdateFrequencyInMilliseconds);
  }

  ngOnDestroy(): void {
    clearInterval(this.residentNotificationsInterval);
  }


  reloadNotifications(){    
    this.notificationService.findByResidentId(this.residentId).subscribe((data) => {
      this.notifications = data;
    });
  }

}
