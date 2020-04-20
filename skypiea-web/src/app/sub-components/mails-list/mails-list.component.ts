import { Component, OnInit, ViewChild, Input, OnChanges } from '@angular/core';
import { WebStorageService } from 'src/app/util/web-storage.service';
import { UserType } from 'src/app/enums/userType.enum';
import { MatTableDataSource, MatPaginator, MatSidenav, MatTab } from '@angular/material';
import { Notification } from 'src/app/models/notification.model';
import { NotificationState } from 'src/app/enums/notificationState.enum';
import { NotificationService } from 'src/app/services/notification.service';

@Component({
  selector: 'app-mails-list',
  templateUrl: './mails-list.component.html',
  styleUrls: ['./mails-list.component.scss']
})
export class MailsListComponent implements OnInit, OnChanges {

  staffNotificationsDisplayedColumns = ['notificationState', 'sendingDate', 'recipient', 'object', 'actions'];
  residentNotificationsDisplayedColumns = ['notificationState', 'sendingDate', 'object', 'actions'];
  notificationsDataSource = new MatTableDataSource<any>();
  @ViewChild('notificationsPaginator', { static: false }) notificationsPaginator: MatPaginator;
  @ViewChild('mailOverviewSidenav', { static: false }) mailOverviewSidenav: MatSidenav;
  @Input() notifications: Array<any>;
  UserType = UserType;
  connectedUserType: string = "";
  lastSelectedNotification: Notification;
  isMailOverviewSidenavOpened = false;
  NotificationState = NotificationState;

  constructor(private webStorageService: WebStorageService, private notificationService: NotificationService) {
    this.connectedUserType = this.webStorageService.getConnectedUserType();
  }

  ngOnInit() {
  }

  ngOnChanges(changes: import("@angular/core").SimpleChanges): void {
    if (!changes.notifications.isFirstChange()) {
      if (this.notifications) {
        this.notificationsDataSource.data = this.notifications;
        this.notificationsDataSource.paginator = this.notificationsPaginator;
      }
    }
  }

  /**
   * We close the side nav if the user clicks on the same notification twice i.e the current notification is the same than the previous one
   * @param notification 
   */
  openCloseNotificationOverview(notification: Notification) {
    // Close the Mail overview sidenav
    if (this.lastSelectedNotification && notification && this.lastSelectedNotification.id == notification.id && this.isMailOverviewSidenavOpened) {
      this.mailOverviewSidenav.close();
      this.isMailOverviewSidenavOpened = false;
    } else {
      this.lastSelectedNotification = notification;
      this.mailOverviewSidenav.open();
      this.isMailOverviewSidenavOpened = true;
      // Set the mail as read if the type of user is resident and the mail has not already been opened
      if (this.connectedUserType == UserType.RESIDENT && this.lastSelectedNotification.notificationState != NotificationState.READ) {
        this.notificationService.readNotification(this.lastSelectedNotification.id).subscribe((data) => {
          notification.notificationState = data.notificationState;
          notification.readingDate = data.readingDate;
        });
      }
    }
  }

  closeNotificationOverview() {
    this.mailOverviewSidenav.close();
    this.isMailOverviewSidenavOpened = false;
  }

  refreshMatTableData() {
    this.notificationsDataSource.paginator._changePageSize(this.notificationsDataSource.paginator.pageSize);
  }

}
