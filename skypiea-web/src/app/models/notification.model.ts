import { NotificationState } from '../enums/notificationState.enum';
import { NotificationAbstract } from './notificationAbstract.model';

export class Notification extends NotificationAbstract {
    sendingDate: Date;
    readingDate: Date;
    notificationState: NotificationState;
    isGroupedMessage: boolean;
    // To avoid a circular structure we will use a string which will store the resident Info
    //resident: Resident;
    residentInfo: string;
    recipientName: string;
}