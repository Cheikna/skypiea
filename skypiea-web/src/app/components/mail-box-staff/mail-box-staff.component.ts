import { Component, OnInit, ViewChild, ViewChildren } from '@angular/core';
import { ResidentService } from 'src/app/services/resident.service';
import { NotificationService } from 'src/app/services/notification.service';
import { Resident } from 'src/app/models/resident.model';
import { Notification } from 'src/app/models/notification.model';
import { ToastService } from 'src/app/util/toast.service';
import { ToastType } from 'src/app/enums/toastType.enum';
import { NotificationTemplate } from 'src/app/models/notificationTemplate.model';
import { MailsListComponent } from 'src/app/sub-components/mails-list/mails-list.component';
import { Room } from 'src/app/models/room.model';
import { RoomService } from 'src/app/services/room.service';
import { nonMedicalObjectIcons } from 'src/app/util/nonMedicalObjectIcons.util';
import { getNonMedicalObjectTypeName } from 'src/app/enums/nonMedicalObjectType.enum';
import { notificationObjectInfo, NotificationObject } from 'src/app/enums/notificationObject.enum';
import { MatExpansionPanel } from '@angular/material';
import { State } from 'src/app/enums/state.enum';

@Component({
  selector: 'app-mail-box-staff',
  templateUrl: './mail-box-staff.component.html',
  styleUrls: ['./mail-box-staff.component.scss']
})
export class MailBoxStaffComponent implements OnInit {

  // To import
  nonMedicalObjectIcons = nonMedicalObjectIcons;
  notificationObjectInfo = notificationObjectInfo;
  NotificationObject = NotificationObject;
  notificationObjectInfoArray: any[];
  typeName = (type) => getNonMedicalObjectTypeName(type);
  @ViewChild('mailsListComponent', { static: false }) mailsListComponent: MailsListComponent;
  @ViewChild('concernedObjectExpansionPanel', { static: false }) concernedObjectExpansionPanel: MatExpansionPanel;
  roomAllOption: Room;
  occupiedRooms: Array<Room>;
  numberOfResidents: number;
  notifications: Array<Notification>;
  notificationTemplates: Array<NotificationTemplate>;
  notificationToSend: Notification;
  selectedRoom: Room;
  roomObjects: Array<any> = [];
  roomFilteredObjects: Array<any> = [];
  concernedObject: any;

  constructor(private roomService: RoomService, private notificationService: NotificationService, private residentService: ResidentService, private toastService: ToastService) {
    this.notificationToSend = new Notification();
    this.notificationToSend.notificationObject = NotificationObject.OTHER;
    this.roomAllOption = new Room();
    this.roomAllOption.id = 0;
    this.notifications = new Array<Notification>();
    this.occupiedRooms = new Array<Room>();
    this.notificationTemplates = new Array<NotificationTemplate>();
    this.selectedRoom = null;
    this.notificationObjectInfoArray = Object.entries(notificationObjectInfo);
  }

  ngOnInit() {

    this.roomService.findAll().subscribe((data: Room[]) => {
      //Only if there is a resident in the room
      for (let room of data) {
        if (room.resident) {
          this.occupiedRooms.push(room);
        }
      }
      this.numberOfResidents = this.occupiedRooms.length;
    });

    this.notificationService.findAllTemplatesAndNotifications().subscribe((data) => {
      if (data) {
        this.notificationTemplates = data.value0;
        this.notifications = data.value1;
      }
    });
  }

  send() {
    if (this.selectedRoom != null && this.notificationToSend) {
      // Allows to have the break line when we read the message on the web page
      this.notificationToSend.messageBody = this.notificationToSend.messageBody.split('\n').join('<br>');

      if (this.selectedRoom.id != 0) {
        if (this.notificationToSend.notificationObject == NotificationObject.ABOUT_OBJECT && this.concernedObject != null) {
          const concernedObjectInfo: string = `Information about the concerned object :<br>Type: ${this.typeName(this.concernedObject.nonMedicalObjectType)}`;
          this.notificationToSend.messageBody = `${concernedObjectInfo}<br><br>${this.notificationToSend.messageBody}`;
        }

        const selectedResident = this.selectedRoom.resident;
        this.notificationService.send(this.notificationToSend, selectedResident.id).subscribe(
          (data: Notification) => {
            // Add the new notification at the first position in the list
            this.notifications.unshift(data);
            this.displaySendResult(true, `${selectedResident.lastName} ${selectedResident.firstName}`);
          },
          (error) => this.displaySendResult(false, `${selectedResident.lastName} ${selectedResident.firstName}`, JSON.stringify(error)));
      } else {
        const message: string = `all of the ${this.numberOfResidents} residents`;
        this.notificationService.sendToAllResidents(this.notificationToSend).subscribe(
          (data: Array<Notification>) => {
            if (data) {
              this.notifications = data.concat(this.notifications);
            }
            this.displaySendResult(true, message);
          },
          (error) => this.displaySendResult(false, message, JSON.stringify(error)));
      }
    }
  }

  private displaySendResult(isSuccess: boolean, recipient: string, errorMessage?: string) {
    if (isSuccess) {
      this.toastService.displayToast(ToastType.SUCCESS, "Notification sent !", true, `The notification has succesfully been sent to ${recipient}`);
      this.clearNotificationToSend();
      this.refreshMatTableData();
    } else {
      if (errorMessage == null) {
        errorMessage = "unkonwn";
      }
      this.toastService.displayToast(ToastType.ERROR, `Notification not sent to ${recipient} !`, true, `${errorMessage}`);
      this.notificationToSend.messageBody = this.notificationToSend.messageBody.split('<br>').join('\n');
    }
  }

  clearNotificationToSend() {
    this.notificationToSend.messageObject = "";
    this.notificationToSend.messageBody = "";
    this.selectedRoom = this.roomAllOption;
  }

  isNotificationSendable(): boolean {
    return (
      this.selectedRoom != null &&
      this.notificationToSend != null &&
      this.notificationToSend.messageBody != null && this.notificationToSend.messageBody.trim().length > 0 &&
      this.notificationToSend.messageObject != null && this.notificationToSend.messageObject.trim().length > 0
    );
  }

  fillMessageBody(notificationTemplate) {
    this.notificationToSend.messageBody = notificationTemplate.messageBody.split('<br>').join('\n');
  }

  private refreshMatTableData() {
    this.mailsListComponent.refreshMatTableData();
  }

  /**
   * Event which occurs when the user changes the selected room from the list
   * @param event 
   */
  onRoomSelectionChange(event) {
    this.concernedObject = null;
    this.roomObjects = [];
    if (this.selectedRoom && this.selectedRoom.id != this.roomAllOption.id) {
      this.roomObjects = this.selectedRoom.nonMedicalConnectedObjects;
      this.roomFilteredObjects = this.selectedRoom.nonMedicalConnectedObjects;
    }
    //This method is called in order to display only the object according to the message Object (object state) when changing room
    this.onNotificationTemplateChange(null)
  }

  onNotificationTemplateChange(event) {
    if (this.notificationToSend.notificationObject && this.notificationToSend.notificationObject == NotificationObject.ABOUT_OBJECT) {
      let object: string = this.notificationToSend.messageObject;
      let enteredState: State = null;
      this.updateConcernedObject(undefined);
      if (object && object.trim().length > 0) {
        object = object.toUpperCase();
        //Search if the user entered a state in the notification object
        if (object.indexOf(State.BROKEN) >= 0) {
          enteredState = State.BROKEN;
        } else if(object.indexOf(State.MISSING) >= 0){
        enteredState = State.MISSING;
        } else if (object.indexOf(State.DANGER) >= 0) {
          enteredState = State.DANGER;
        } else if (object.indexOf(State.WARNING) >= 0) {
          enteredState = State.WARNING;
        }
      }
      if (enteredState == null) {
        this.roomFilteredObjects = this.roomObjects;
      } else {
        this.roomFilteredObjects = this.roomObjects.filter((obj) => obj.state == enteredState);
      }
    }


  }

  clearMessageObject(){
    if(this.concernedObject){
      this.updateConcernedObject(undefined);
    }
    this.notificationToSend.messageObject = "";
  }

  updateConcernedObject(object) {
    this.concernedObject = object;
  }

  disableConcernedObjectExpansionPanel() {
    const disable: boolean = (!this.selectedRoom || !this.selectedRoom.resident || this.selectedRoom.resident.id == 0)
      || (!this.notificationToSend || this.notificationToSend.notificationObject != NotificationObject.ABOUT_OBJECT);

    if (disable && this.concernedObjectExpansionPanel) {
      if(this.concernedObject){
        this.updateConcernedObject(null);
      }
      this.concernedObjectExpansionPanel.close();
    }

    return disable;
  }
}
